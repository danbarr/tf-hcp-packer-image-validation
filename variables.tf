variable "owner" {
  type    = string
  default = "dbarr"
}

variable "packer_bucket" {
  type    = string
  default = "ubuntu20-base"
}

variable "packer_channel" {
  type    = string
  default = "production"
}

variable "prefix" {
  type    = string
  default = "hashicafe"
}

variable "aws_region" {
  type    = string
  default = "us-east-2"
}
