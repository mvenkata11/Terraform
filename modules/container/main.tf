
resource "docker_container" "first_container"{

name = "${var.container_name}"
image = "${docker_image.image_id.latest}"
ports{

internal = "${var.internal}"
external = "${var.external}"
}
}

