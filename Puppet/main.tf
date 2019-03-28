provider "aws" {
region = "${var.aws_region}"
}






module "network" {

source = "./network"
vpc_cidr = "${var.vpc_cidr}"
public_cidr = "${var.public_cidr}"
accessip = "${var.accessip}"

}


module "compute" {

source = "./compute"
instance_count = "${var.instance_count}"
key_name = "${var.key_name}"
public_key_path = "${var.public_key_path}"
instance_type = "${var.instance_type}"
ami_id = "${var.ami_id}"
private_ip = "${var.private_ip}"
subnet = "${module.network.public_subnet}"
security_group = "${module.network.public_sg}"
subnet_ip = "${module.network.subnet_ip}"

}
