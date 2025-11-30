output "s3bucket_id" {
  value = module.s3_bucket.bucket_id
}

output "s3bucket_name" {
  value = module.s3_bucket.bucketname
}

output "ec2_tagname" {
  value = module.aws_ec2.ec2_name
}

output "ec2_keypair" {
  value = module.aws_ec2.key_pair
}
