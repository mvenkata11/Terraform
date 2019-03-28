aws_region = "us-west-1"
vpc_cidr = "10.145.0.0/16"
public_cidr = "10.145.10.0/24"
private_ip = ["10.145.10.40","10.123.10.50"]
accessip = "0.0.0.0/0"
instance_count= 2
key_name = "tf_key"
public_key_path = "/home/user_name/.ssh/id_rsa.pub" 
instance_type = "t2.micro"

ami_id = "ami-011b3ccf1bd6db744"
