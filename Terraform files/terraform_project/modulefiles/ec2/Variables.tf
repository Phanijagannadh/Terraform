variable "ami_value" {
    description = " give ami value (select OS like Ubuntu, Amz linux, etc)"
}

variable "instance_type_value" {
    description = " give instance like (no. of CPU , memory size)"
}


 variable "subnet_id_value" {
    description = "give value (Net is divided into 2 or many for securtiy , privacy reasons)"
 }


variable "keyname" {
  description = "Give key pair to ec2"
}


 variable "tag_name" {
    description = " give tag name to ec2"
 }



 