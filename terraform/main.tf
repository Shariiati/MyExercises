#########################################
#          ESXI Guest resource          #
#########################################

#### resources ####
## https://developer.hashicorp.com/terraform (Automate Infrastructure on Any Cloud)
## https://developer.hashicorp.com/terraform/language (Terraform Language Documentation)
##
###    ESXI    ###
## https://github.com/josenk/terraform-provider-esxi
## https://www.chunho-ling.com/terraform-create-virtual-machines-in-esxi-server/ (Create Virtual Machines in ESXi Server)
## https://gammalab.net/blog/lgbfbuypsm53l/ (IaC at home with Terraform-provider-esxi + cloud-init)
## https://upcloud.com/resources/tutorials/terraform-variables (How to use Terraform variables)
##
###  vSphere  ###
## https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs
## https://tekanaid.com/posts/terraform-create-ubuntu22-04-vm-vmware-vsphere (Terraform to Create a Ubuntu 22.04 VM in VMware vSphere ESXi)
##
###  Providers  ###
## https://registry.terraform.io/browse/providers (Providers list)
## https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs
## https://developer.hashicorp.com/terraform/tutorials/modules/module (Modules overview)
## https://developer.hashicorp.com/terraform/language/style (Style Guide)
####

resource "esxi_guest" "iac-mng" {
  guest_name     = var.guest_name
  disk_store     = var.disk_store
  boot_disk_size = var.boot_disk_size
  boot_disk_type = var.boot_disk_type
  memsize        = var.memsize
  numvcpus       = var.numvcpus
  guestos        = var.guestos
  virthwver      = var.virthwver
  power          = var.power
  # clone_from_vm      = "ConfigurationManager - x.x.x.x"

  network_interfaces {
    virtual_network = var.virtual_network_1
  }
  network_interfaces {
    virtual_network = var.virtual_network_2
  }
}

##
##

#resource "esxi_guest" "prd" {
# guest_name         = "tmp - x.x.x.x"
# numvcpus           = "4"
# boot_disk_size     = "150"
# memsize            = "8192"
# disk_store         = var.disk_store
# boot_disk_type     = var.boot_disk_type
# boot_firmware      = "bios"
#  resource_pool_name = "/"
#  virthwver          = "19"
#  guestos            = "ubuntu-64"
#  power              = "on"
#
#  network_interfaces {
#    virtual_network = var.virtual_network_1
#    nic_type        = "vmxnet3"
#    mac_address     = "xxxx::xxx:xxxx:xxx:xxxx"
#}
#  network_interfaces {
#    virtual_network = var.virtual_network_2
#    nic_type        = "vmxnet3"
#    mac_address     = "xxxx::xxx:xxxx:xxxx:xxxx"
#  }
#}
