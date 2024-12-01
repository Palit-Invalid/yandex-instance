variable "zone" {
  description = "VM will be deployed to this region. Details: https://yandex.cloud/en-ru/docs/overview/concepts/region"
  type        = string
}

variable "name" {
  description = "Virtual machine name"
  type        = string
}

variable "cpu" {
  description = "Number of CPU"
  type        = number
  default     = 2
}

variable "memory" {
  description = "Number of RAM (GB)"
  type        = number
  default     = 2
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
