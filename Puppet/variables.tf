variable "aws_region" {}

variable "vpc_cidr" {}

variable "public_cidr" {
    
}

variable "accessip" {}

variable "key_name" { }
variable "public_key_path"{ }
variable "instance_type" { }
variable "instance_count" {
    default = 2
}
variable "private_ip"{
    type ="list"
}
variable "ami_id"{}
