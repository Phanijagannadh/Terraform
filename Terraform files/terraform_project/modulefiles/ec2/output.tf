#output "public-Ip-addr" {
 #   description = "Show ip address of ec2 in o/p"
  #  value = aws_instance.teraserver.public_ip
# }

output "key_pair" {
  description = "Show ec2 key pair in o/p"
  value = aws_instance.teraserver.key_name
}

output "ec2_name" {
  description = "Show ec2 name in o/p"
  value = aws_instance.teraserver.tags.Name
}