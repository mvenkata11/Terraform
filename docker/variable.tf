variable "container_name"{

description = "enter the container name"

default = "container_ghost"
}



variable "image_name"{

description = "enter the image name"

default = "ghost:alpine"
}


variable "int_port"{

description = "enter the internal port"

default = "2368"
}


variable "ext_port"{

description = "enter the external port"

default = "9090"
}


