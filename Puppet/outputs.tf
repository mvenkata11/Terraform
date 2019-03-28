

output "public subnets"{

value = "${ module.network.public_subnet}"
}

output "subnet ips"{

value = "${module.network.subnet_ip}"

}

output "public security group"{
value = "${module.network.public_sg}"
}

output "public instance ids" {
value = "${module.compute.server_id}"

}

output "instance public ips" {
value = "${module.compute.server_public_ip}"

}

output "instance private ips" {
value = "${module.compute.server_private_ip}"

}
