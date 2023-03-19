resource "yandex_vpc_network" "lab-net" {
  name="${local.preffix}lab-network"
}

resource "yandex_vpc_subnet" "lab-subnet-a" {
  network_id      ="${yandex_vpc_network.lab-net.id}"
  v4_cidr_blocks  =["10.2.0.0/16"]
  zone            = "ru-central1-a"
  labels = {
    "project"     ="slurm"
    "env"         ="lab"
  }
  name            = "lab-subnet-a"
}
resource "yandex_vpc_subnet" "lab-subnet-b" {
  network_id      ="${yandex_vpc_network.lab-net.id}"
  v4_cidr_blocks  =["10.3.0.0/16"]
  zone            = "ru-central1-a"
  labels = {
    "project"     ="slurm"
    "env"         ="lab"
  }
  name            = "lab-subnet-b"
}
resource "yandex_vpc_subnet" "lab-subnet-c" {
  network_id      ="${yandex_vpc_network.lab-net.id}"
  v4_cidr_blocks  =["10.4.0.0/16"]
  zone            = "ru-central1-a"
  labels = {
    "project"     ="slurm"
    "env"         ="lab"
  }
  name            = "lab-subnet-c"
}