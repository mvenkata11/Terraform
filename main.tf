resource "docker_image" "image_id" {

name = "ghost:latest"
}

resource "docker_container" "first_container"{

name = "container_ghost"
image = "${docker_image.image_id.latest}"
ports{

internal = "2368"
external = "9090"
}
}

output "IP Address"{
value = "${docker_container.first_container.ip_address}"


}
output "container_name"{
value = "${docker_container.first_container.name}"


}

