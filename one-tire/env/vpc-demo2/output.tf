output "vpc_id" {
  value = aws_vpc.app_vpc.id
}
output "vpc_arn" {
  value = aws_vpc.app_vpc.arn
}

output "env" {
  value = var.env
}

