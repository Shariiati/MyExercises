## Main variables
variable "disk_store" { default = "datastore1" }
variable "boot_disk_type" { default = "thin" }
variable "power" { default = "off" }
variable "virthwver" {
  default     = "19"
  description = "Set guest_vm Compatibility"
}
variable "virtual_network_1" {
  default     = "port group pv"
  description = "For enable IP-VALID interface"
}
variable "virtual_network_2" {
  default     = "VM Network"
  description = "For enable IP-InVALID interface"
}
variable "guest_name" {}
variable "boot_disk_size" {}
variable "memsize" {}
variable "numvcpus" {}
variable "guestos" {}