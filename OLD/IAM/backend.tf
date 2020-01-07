terraform {
  backend "s3" {
    bucket = "terraform-us-aziza"
    key    = "aws/iam/iam_state"
    region = "us-east-1"
  }
}