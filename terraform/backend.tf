terraform {
  backend "s3" {
    bucket = "kafka-demo-smveimba-001""
    key    = "terraform/state"
    region = "us-east-1"
  }
}