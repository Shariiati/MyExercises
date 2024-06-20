resource "esxi_guest" "esxi-vm" {
  guest_name     = var.instance_name
  disk_store     = var.disk_store
  boot_disk_size = var.boot_disk_size
  boot_disk_type = var.boot_disk_type
  memsize        = var.memsize
  numvcpus       = var.numvcpus
  guestos        = var.guestos
  virthwver      = var.virthwver
  power          = var.power
  # clone_from_vm      = "ConfigurationManager - 10.10.10.20"

  network_interfaces {
    virtual_network = var.virtual_network_1
  }
  network_interfaces {
    virtual_network = var.virtual_network_2
  }
}
