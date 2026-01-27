resource "aws_s3_bucket" "keren-example-bucket" {
  bucket = "my-tf-test-bucket-for-keren-123456"

  tags = {
    Name        = "Environment"
    Environment = "Dev"
  }
}