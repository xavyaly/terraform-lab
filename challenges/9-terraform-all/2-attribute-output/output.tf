resource "aws_s3_bucket" "s3_bucket" {
  bucket = "zero-size-bucket"
}

output "s3_buckets" {
#   value = aws_s3_bucket.s3_bucket.arn
  value = aws_s3_bucket.s3_bucket
}

resource "aws_eip" "eip" {
  vpc = true
}

output "eip_" {
#   value = aws_eip.eip.public_ip
  value = aws_eip.eip
}