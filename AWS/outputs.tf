output "bucket_name"{
value ="${module.storage.bucketname}
}

output "public subnets"{

value = "${join(",", module.network.public_subnets)}"
}

output "subnet ips"{

value = "${join(",", module.network.subnet_ips)}"

}

output "public ssecurity group"{
value = "${module.network.public_sg"}"
}

output "public instance ids" {
value = "${module.compute.server_id}"

}

output "public instance ips" {
value = "${module.compute.server_ip}"

}

