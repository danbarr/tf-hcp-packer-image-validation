output "static_instance_id" {
  value = aws_instance.static.id
}

output "static_instance_public_ip" {
  value = aws_instance.static.public_ip
}

output "ami_id" {
  value = data.hcp_packer_image.ubuntu.cloud_image_id
}
