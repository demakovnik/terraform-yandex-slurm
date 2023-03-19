locals {
  preffix = "slurm-"
}

resource "yandex_compute_instance" "instance-1" {
  name        = "${local.preffix}${var.vm-1_name}"
  platform_id = "standard-v1"
  zone        = "ru-central1-a"

  resources {
    cores  = var.resources.cpu
    memory = var.resources.memory
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
      size = var.resources.disk
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.lab-subnet-c.id
    nat = true
  }
  labels = var.labels

  metadata = {
    ssh-keys = var.public_ssh_key_path !="" ? "centos:${file("~/.ssh/id_rsa.pub")}" : "centos:${tls_private_key.private_key.public_key_pem}"
  }
}

resource "yandex_compute_instance" "instance-2" {
  name        = "${local.preffix}${var.vm-2_name}"
  platform_id = "standard-v1"
  zone        = "ru-central1-a"

  resources {
    cores  = var.resources.cpu
    memory = var.resources.memory
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
      size = var.resources.disk
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.lab-subnet-c.id
    nat = true
  }
  labels = var.labels

  metadata = {
    ssh-keys = var.public_ssh_key_path !="" ? "centos:${file("~/.ssh/id_rsa.pub")}" : "centos:${tls_private_key.private_key.public_key_openssh}"
  }
}