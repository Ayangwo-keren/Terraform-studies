resource "aws_s3_bucket" "keren-example-bucket" {
  bucket = var.keren_bucket_name

  tags = {
    Name        = "keren-example-bucket-01"
    Environment = "Dev"
  }
}
resource "aws_s3_bucket_versioning" "keren_example-versioning" {
  bucket = aws_s3_bucket.keren-example-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}