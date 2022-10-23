# Заменить на ID своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_cloud_id" {
  default = "b1g4m8qmhdgh8k9b16jr"
}

# Заменить на Folder своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_folder_id" {
  default = "b1g72hofn0r6eom3l3oo"
}

# Заменить на ID своего образа
# ID можно узнать с помощью команды yc compute image list
variable "centos-7" {
  default = "fd8nkrcks6c9ra5im9hj"
}

variable "instance_cores" {
  default = "2"
}

variable "instance_memory" {
  default = "2"
}
