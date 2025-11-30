terraform {
  backend "s3" {
    bucket = "statebackend91"
    region = "ap-southeast-2"
    dynamodb_table = "terraform_lock"
  }
} 
