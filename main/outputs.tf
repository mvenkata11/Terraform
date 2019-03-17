output "IP_container" {

value = "${docker_container.container_id.ip_address}"

}

output "image" {

value = "${docker_image.image_id.id}"

}
