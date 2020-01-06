terraform {
  backend "s3" {
    bucket = "backend-state-aziza"
    key    = "aws/iam/iam_state"
    region = "us-east-1"
  }
}