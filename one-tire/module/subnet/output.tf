output "public-subnet-id" {
  value = aws_subnet.main.id
}
output "private-subnet-id" {
  value = aws_subnet.private.id
}

output "public-subnet-cidr" {
  value = var.subnet_cidr_public
}
output "private-subnet-cidr" {
  value = var.subnet_cidr_private
}

