resource "aws_subnet" "private" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_cidr_private
  availability_zone = var.private_az

  tags = {
    Name        = "Private-subnet"
    Environment = var.env
    managed_by  = "terraform"
  }
}

resource "aws_route_table" "private" {
  vpc_id = var.vpc_id

  tags = {
    Name        = "Route-Table"
    Environment = var.env
    managed_by  = "terraform"
  }
}

resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private.id
}
