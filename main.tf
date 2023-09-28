terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">=0.13"
}

provider "yandex" {
   token = var.yc_token
   cloud_id  = "b1ga8hp5qimcnoglaoe9"
   folder_id = "b1gd90e13r1hhqi7jflu"
   zone      = "ru-central1-a"
  }
