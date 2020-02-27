module "subnet" {
  source = "../../module/subnet"
  vpc_id = data.terraform_remote_state.network.outputs.vpc_id
  subnet_cidr_public= var.public_cidr
  subnet_cidr_private= var.private_cidr
  env = data.terraform_remote_state.network.outputs.env
  private_az = var.private_az
  public_az = var.public_az
}
