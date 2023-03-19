vm-1_name = "first"
vm-2_name = "second"
image_id = "fd82tb3u07rkdkfte3dn"
public_ssh_key_path = "~/.ssh/id_rsa.pub"
labels = {
  project="slurm"
  env="lab"
}
resources = {
  cpu = 2,
  memory = 8,
  disk = 40
}
nlb_healthcheck = {
    name   = "test"
    port   = 80
    path   = "/"
}