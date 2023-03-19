output "instance-1-ip" {
  value = yandex_compute_instance.instance-1.network_interface.0.nat_ip_address
}

output "instance-2-ip" {
  value = yandex_compute_instance.instance-2.network_interface.0.nat_ip_address
}

# output "loadbalancer-ip" {
#   value = tolist(tolist(yandex_lb_network_load_balancer.load_balancer.listener)[0].external_address_spec)[0].address
# }

output "private_key" {
  value = tls_private_key.private_key
  sensitive = true
}

output "private_key_ssh" {
  value = tls_private_key.private_key.private_key_openssh
  sensitive = true
}

