data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "talk-my-terraform-state"
    key    = "terraform/vpc"
    region = "ap-south-1"
        profile = "jaideep"
    shared_credentials_file = "~/.aws/config"
  }
}