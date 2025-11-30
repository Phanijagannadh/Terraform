provider "aws" {
  region = "ap-southeast-2"
}


module "aws_ec2" {
    source = "./modulefiles/ec2"
    ami_value = "ami-0b8d527345fdace59"
    instance_type_value = "t3.small"
    subnet_id_value = "subnet-0f2f58a6a8da83f8e "
    tag_name = "test_terraform"
    keyname = "terraform"
}  

module "s3_bucket" {
  source      = "./modulefiles/s3"
  bucketname = "statebackend91"
}


resource "aws_dynamodb_table" "my_table" {
  name             = "terraform_lock"
  hash_key         = "lockid"
  billing_mode     = "PAY_PER_REQUEST" # Or "PROVISIONED"

  attribute {
    name = "lockid"
    type = "S" # S for String, N for Number, B for Binary
  }
}