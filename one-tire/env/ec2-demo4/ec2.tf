resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
    subnet_id=data.terraform_remote_state.subnet.outputs.public-subnet-id
    security_groups = [aws_security_group.allow_http.id]
    associate_public_ip_address = true
  tags = {
    Name = "HelloWorld"
    Environment= data.terraform_remote_state.network.outputs.env
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["talk"]
  }

  owners = ["444670105054"]
}
