#########################################
#         ESXI Provider details         #
#########################################

terraform {
  #  backend "remote" {
  #    hostname     = "app.terraform.io"
  #    organization = "hossein"
  #
  #    workspaces {
  #      name = "learn-terraform"
  #    }
  #  }

  required_version = ">= 0.13"
  required_providers {
    esxi = {
      source = "registry.terraform.io/josenk/esxi"
    }
  }
}

provider "esxi" {
  esxi_hostname = var.esxi_hostname
  esxi_username = var.esxi_username
  esxi_password = var.esxi_password
}