terraform {
  backend "s3" {
    bucket = "backend-state-aziza"
    key    = "infrastructure"
    region = "us-east-1"
  }
}