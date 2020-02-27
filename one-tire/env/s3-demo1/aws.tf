provider "aws" {
  region                  = var.aws_region
  profile                 = "jaideep"
  shared_credentials_file = "~/.aws/config"
}
