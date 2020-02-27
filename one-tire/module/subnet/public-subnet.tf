resource "aws_subnet" "main" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr_public
  availability_zone= var.public_az
  tags = {
    Name = "Public-Subnet"
    Environment = var.env
    managed_by  = "terraform"

  }
}


resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id

  tags = {
    Name        = "IGW"
    Environment = var.env
    managed_by  = "terraform"
  }
}

resource "aws_route_table" "public" {
  vpc_id = var.vpc_id

  tags = {
    Name        = "Route-Table"
    Environment = var.env
    managed_by  = "terraform"
  }
}
resource "aws_route" "default" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}
resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.main.id
  route_table_id = aws_route_table.public.id
}
