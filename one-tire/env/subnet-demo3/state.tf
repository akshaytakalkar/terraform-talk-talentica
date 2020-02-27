terraform {
  backend "s3" {
    bucket = "talk-my-terraform-state"
    key    = "terraform/subnet"
    region = "ap-south-1"
    profile = "jaideep"
    shared_credentials_file = "~/.aws/config"
  }
}
