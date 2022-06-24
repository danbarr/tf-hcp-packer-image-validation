variable "owner" {
  type    = string
  default = "dbarr"
}

variable "packer_bucket" {
  type    = string
  default = "ubuntu-focal"
}

variable "packer_channel" {
  type    = string
  default = "production"
}

variable "prefix" {
  type    = string
  default = "dbarr"
}

variable "aws_region" {
  type    = string
  default = "eu-west-1"
}