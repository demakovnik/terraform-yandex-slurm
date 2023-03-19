# resource yandex_lb_target_group "lb_group" {
#   name      = "target-group"
#   region_id = "ru-central1"

#   target {
#     subnet_id = "${yandex_vpc_subnet.lab-subnet-c.id}"
#     address   = "${yandex_compute_instance.instance-1.network_interface.0.ip_address}"
#   }

#   target {
#     subnet_id = "${yandex_vpc_subnet.lab-subnet-c.id}"
#     address   = "${yandex_compute_instance.instance-2.network_interface.0.ip_address}"
#   }
# }

# resource "yandex_lb_network_load_balancer" "load_balancer" {
#   name = "network-load-balancer"

#   listener {
#     name = "my-listener"
#     port = 80
#     external_address_spec {
#       ip_version = "ipv4"
#     }
#   }

#   attached_target_group {
#     target_group_id = "${yandex_lb_target_group.lb_group.id}"

#     healthcheck {
#       name = var.nlb_healthcheck.name
#       http_options {
#         port = var.nlb_healthcheck.port
#         path = var.nlb_healthcheck.path
#       }
#     }
#   }
# }