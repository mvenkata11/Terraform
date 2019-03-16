output "IP Address"{
value = "${docker_container.first_container.ip_address}"


}
output "container_name"{
value = "${docker_container.first_container.name}"


}

