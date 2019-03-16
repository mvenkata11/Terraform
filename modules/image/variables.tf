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
default = "2368"
}

variable "external" {
description = "external port no"
default = "9090"
}

