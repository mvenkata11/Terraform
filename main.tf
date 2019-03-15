variable "image" {
description = "image for container"
default = "ghost:latest"
}


variable "container_name" {
description = "container name"
default = "container_ghost"
}

variable "internal" {
description = "internal port no"
default = "2380"
}

variable "external" {
description = "external port no"
default = "9090"
}

resource "docker_image" "image_id" {

name = "${var.image}"
}

resource "docker_container" "first_container"{

name = "${var.container_name}"
image = "${docker_image.image_id.latest}"
ports{

internal = "${var.internal}"
external = "${var.external}"
}
}

output "IP Address"{
value = "${docker_container.first_container.ip_address}"


}
output "container_name"{
value = "${docker_container.first_container.name}"


}

