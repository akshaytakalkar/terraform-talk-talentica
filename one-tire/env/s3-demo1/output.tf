output "s3_arn" {
  value = aws_s3_bucket.state_bucket.arn
}

output "s3_region" {
  value = aws_s3_bucket.state_bucket.region
}
