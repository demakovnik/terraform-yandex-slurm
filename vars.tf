variable "vm-1_name" {
  type        = string
  description = "Name of First Viratial machine" 
}

variable "vm-2_name" {
  type        = string
  description = "Name of Second Viratial machine"
}

variable "image_id" {
  type        = string
  default     = "fd80le4b8gt2u33lvubr"
  description = "Id of virtual disk"
}

variable "labels" {
  type = map(string)
  description = "Labels"
}
variable "resources" {
  type = object({
    cpu    = number,
    memory = number,
    disk   = number
  })
}
variable "nlb_healthcheck" {
  type = object({
    name = string,
    port = number,
    path = string
  })
}
variable "public_ssh_key_path" {
  type = string
  default = ""
}