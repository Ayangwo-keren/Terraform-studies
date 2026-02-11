# the variable.tf has the format as the variable name, the description, type and default value
# But for the variable name, all the other values are optional

variable "keren_bucket_name" {
  description = "bucket name for keren s3 bucket"
  type = string
  default = "my-tf-test-bucket-for-keren-1234567"
}