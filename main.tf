terraform {
  required_version = ">= 1.9.0, < 2.0"
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.133.0"
    }
  }
}

resource "yandex_compute_instance" "vm" {
  name = var.name
  zone = var.zone

  resources {
    cores         = var.cpu
    memory        = var.memory
    core_fraction = var.core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = yandex_compute_image.baseimage.id
    }
  }

  network_interface {
    index     = 1
    subnet_id = var.vpc_subnet_id
    nat       = var.enable_external_ip
  }

  metadata = {
    ssh-keys = var.ssh_keys
  }
}

resource "yandex_compute_image" "baseimage" {
  source_family = var.image
}
