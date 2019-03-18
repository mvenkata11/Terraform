

variable "env" {

description = "dev or prod"

}


variable "image" {
type ="map"
default = { 
dev = "ghost:alpine"
prod = "ghost:latest"
}

}

variable "container_name" {

type ="map"
default = {
dev = "container_ghost_dev"
prod = "container_ghost_prod"
}
}

variable "int_port" {
type ="map"
default = {
dev = "2368"
prod = "2368"
}
}

variable "ext_port" {
type ="map"
default = {
dev = "9090"
prod = "90"

}
}
