terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "0.86.0"
    }
    tls = {
      source = "hashicorp/tls"
      version = "4.0.4"
    }
    random = {
      source = "hashicorp/random"
      version = "3.4.3"
    }
  }
}

provider "yandex" {
  token     = "y0_AgAAAABpIhLIAATuwQAAAADeRJdCgeTcDv8gTIuo7k52Z_Uo1yfY8ZI"
  cloud_id  = "b1gvn6sbsasjo76341rh"
  folder_id = "b1g044r9np5kh9evipgg"
}