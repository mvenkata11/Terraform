provider "aws" {

region = "${var.aws_region}"
}


module "storage" {
 source = "./storage"
 project_name = "{var.project_name}"

}


module "network" {

source = "./network"
vpc_cidr = "${var.vpc_cidr}"
public_cidrs ="${var.vpc_cidrs}"
accessip = "${var.accessip}



}
