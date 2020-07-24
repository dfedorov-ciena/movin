##
# Copyright (C) 2020 by Ciena Corporation & Dmitri Fedorov
##

provider "vsphere" {
  user = var.esxi_username
  password = var.esxi_password
  vsphere_server = var.esxi_hostname
  allow_unverified_ssl = true
}
