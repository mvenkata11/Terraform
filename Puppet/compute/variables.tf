variable "key_name" { }

variable "public_key_path"{ }

variable "subnet_ip"{

}
variable "instance_count" {
default =2
}

variable "instance_type" { }

variable "ami_id"{}

variable "private_ip" {
    type = "list"
  
}

variable "security_group" {  }

variable "subnet" {

}




