resource "aws_s3_bucket" "keren-example-bucket" {
  bucket = "my-tf-test-bucket-for-keren-123456"

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