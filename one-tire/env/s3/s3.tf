resource "aws_s3_bucket" "state_bucket" {
  bucket = var.s3-name
  acl    = "private"

  tags = {
    Name        = var.env
    Managedby = "Terraform"
    account_id = data.aws_caller_identity.current.account_id
    user_id = data.aws_caller_identity.current.user_id
  }
  
}
data "aws_caller_identity" "current" {}