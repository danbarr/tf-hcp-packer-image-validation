terraform {
  required_version = ">= 1.0.0"
  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = ">= 0.30"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.2"
    }
  }

  cloud {
    organization = "dbarr-org"
    hostname     = "app.terraform.io"

    workspaces {
      name = "hcp-packer-image-validation"
    }
  }
}
