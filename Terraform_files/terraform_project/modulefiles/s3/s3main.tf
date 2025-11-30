provider "aws" {
  region = "ap-southeast-2"
}





# S3 bucket
resource "aws_s3_bucket" "testbucket" {
 bucket = var.bucketname

} 