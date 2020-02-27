resource "aws_vpc" "app_vpc" {
  instance_tenancy = "default"
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.env
    Managedby = "Terraform"
    account_id = data.aws_caller_identity.current.account_id
    user_id = data.aws_caller_identity.current.user_id
  }
}


data "aws_caller_identity" "current" {}
