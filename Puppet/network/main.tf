



# VPC ##
resource "aws_vpc" "tf_vpc" {

cidr_block = "${var.vpc_cidr}"

enable_dns_hostnames = true
enable_dns_support = true

tags {
     Name = "tf_vpc"
     }
}

# Internet Gateway ##
resource "aws_internet_gateway" "tf_ig"{

vpc_id = "${aws_vpc.tf_vpc.id}"

tags {
Name = "tf_ig"
}

}

# Public Route Table ##
resource "aws_route_table" "tf_public_rt"{

vpc_id = "${aws_vpc.tf_vpc.id}"
route {
cidr_block = "0.0.0.0/0"
gateway_id = "${aws_internet_gateway.tf_ig.id}"

}
tags {
Name = "tf_public_rt"
}
}

# Private Route Table ##
resource "aws_default_route_table" "tf_private_rt" { 


default_route_table_id = "${aws_vpc.tf_vpc.default_route_table_id}"

tags {

Name = "tf_private"
}

}

#Public Subnet
resource "aws_subnet" "tf_public_subnet"{

vpc_id = "${aws_vpc.tf_vpc.id}"
cidr_block = "${var.public_cidr}"
map_public_ip_on_launch = true


tags {
Name = "tf_public_${count.index + 1}"
}

}

# public table associat
resource "aws_route_table_association" "tf_public_assoc" {
subnet_id = "${aws_subnet.tf_public_subnet.id}"
route_table_id = "${aws_route_table.tf_public_rt.id}"

}

# Security groups ##
resource "aws_security_group" "tf_public_sg"{

name = " tf_public_sg"
description = "used for access to the public instances"
vpc_id = "${aws_vpc.tf_vpc.id}"


ingress {
from_port = 22
to_port = 22
protocol = "tcp"
cidr_blocks = ["${var.accessip}"]
}

ingress {

from_port = 8140
to_port = 8140
protocol = "tcp"
cidr_blocks = ["${var.accessip}"]
}

ingress {

from_port = -1
to_port = -1
protocol = "icmp"
cidr_blocks = ["${var.accessip}"]
}

egress {

from_port = 0
to_port = 0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]

}
}

