variable "zone" {
  type = string
}

variable "name" {
  type = string
}

variable "cpu" {
  type    = number
  default = 2
}

variable "memory" {
  type    = number
  default = 2
}

variable "core_fraction" {
  type    = number
  default = 5
}

variable "image" {
  type = string
}

variable "enable_external_ip" {
  type    = bool
  default = false
}

variable "ssh_keys" {
  type = string
}

variable "vpc_subnet_id" {
  type = string
}
