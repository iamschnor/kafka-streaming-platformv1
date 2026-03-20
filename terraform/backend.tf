terraform {
  backend "s3" {
    bucket = "kafka-terraform-state-bucket1"
    key    = "terraform/state"
    region = "us-east-1"
  }
}