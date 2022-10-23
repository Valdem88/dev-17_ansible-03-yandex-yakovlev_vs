resource "local_file" "prod" {
  content = <<-DOC
    ---
    clickhouse:
      hosts:
        clickhouse-01:
          ansible_host: ${yandex_compute_instance.node01.network_interface.0.nat_ip_address}
          ansible_user: centos

    vector:
      hosts:
        vector-01:
          ansible_host: ${yandex_compute_instance.node02.network_interface.0.nat_ip_address}
          ansible_user: centos

    lighthouse:
      hosts:
        lighthouse-01:
          ansible_host: ${yandex_compute_instance.node03.network_interface.0.nat_ip_address}
          ansible_user: centos
    DOC
  filename = "../inventory/prod.yaml"

  depends_on = [
    yandex_compute_instance.node01,
    yandex_compute_instance.node02,
    yandex_compute_instance.node03
  ]
}
