variable "env" {
  default="Image-build"
}

variable "aws_region" {
  default="ap-south-1"
}

variable "public_cidr" {
  default="10.20.0.0/24"
}
variable "private_cidr" {
  default="10.20.1.0/24"
}

variable "private_az" {
  default="ap-south-1a"
}

variable "public_az" {
  default="ap-south-1b"
}

