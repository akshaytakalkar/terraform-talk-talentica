# output "vpc-id" {
#   value = "data.network.output.vpc_id"
# }


output "public_ip" {
  value = aws_instance.web.public_ip
}
