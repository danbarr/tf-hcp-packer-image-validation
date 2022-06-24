provider "hcp" {}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      Owner = var.owner
    }
  }
}

data "aws_availability_zones" "available" {
  state = "available"
}

data "hcp_packer_iteration" "ubuntu" {
  bucket_name = var.packer_bucket
  channel     = var.packer_channel
}

data "hcp_packer_image" "ubuntu" {
  bucket_name    = var.packer_bucket
  cloud_provider = "aws"
  iteration_id   = data.hcp_packer_iteration.ubuntu.ulid
  region         = var.aws_region
}

resource "aws_instance" "static" {
  ami           = data.hcp_packer_image.ubuntu.cloud_image_id
  instance_type = "t3.micro"
  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }
  tags = {
    Name  = "${var.owner}-static-instance"
    Owner = var.owner
  }
}

resource "aws_launch_template" "template" {
  name_prefix            = "${var.prefix}-asg-"
  image_id               = data.hcp_packer_image.ubuntu.cloud_image_id
  instance_type          = "t3.micro"
  update_default_version = true
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name  = "${var.prefix}-asg-instance"
      Owner = var.owner
    }
  }
}

resource "aws_autoscaling_group" "asg" {
  name_prefix        = "${var.prefix}-asg-"
  availability_zones = data.aws_availability_zones.available.names
  desired_capacity   = 1
  max_size           = 2
  min_size           = 1

  launch_template {
    id      = aws_launch_template.template.id
    version = aws_launch_template.template.latest_version
  }

  instance_refresh {
    strategy = "Rolling"
    preferences {
      min_healthy_percentage = 50
    }
    triggers = ["tag"]
  }
}