output "server_id" {

value ="${join(",",aws_instance.tf_server.*.id)}"

}

output "server_public_ip" {

value = "${join(",",aws_instance.tf_server.*.public_ip)}"

}

output "server_private_ip" {

value = "${join(",",aws_instance.tf_server.*.private_ip)}"

}