resource "aws_s3_bucket" "tommy-s3" {
  bucket = var.bucket

  tags = {
    Name        = "My bucket"
    Environment = var.env
  }
}
