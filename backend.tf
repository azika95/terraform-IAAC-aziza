terraform {
  backend "s3" {
    bucket = "mybucketbackend-state-aziza"
    key    = "infrastructure"
    region = "us-east-1"
  }
}