##
# Copyright (C) 2020 by Ciena Corporation & Dmitri Fedorov
##


data "vault_generic_secret" "esxi" {
  path = "secret/esxi"
}

provider "vsphere" {
  user = var.esxi_username
  password = data.vault_generic_secret.esxi.data["password"]
  vsphere_server = var.esxi_hostname
  allow_unverified_ssl = true
}
