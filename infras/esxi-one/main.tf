##
# Copyright (C) 2020 by Ciena Corporation & Dmitri Fedorov
##

data "vsphere_datacenter" "dc" {
  name = "ha-datacenter"
}

data "vsphere_datastore" "ds" {
  name = "datastore1"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_resource_pool" "rp" {
  name = "cluester1"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "vmnet100" {
  name = "vmnet100"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "vmnet1000" {
  name = "vmnet1000"
  datacenter_id = data.vsphere_datacenter.dc.id
}

resource "vsphere_virtual_machine" "vm" {
  name = "terraform-test"
  resource_pool_id = data.vsphere_resource_pool.rp.id
  datastore_id = data.vsphere_datastore.ds.id
  num_cpus = 8
  memory = 1024
  guest_id = "Debian Linux"
  network_interface {
    network_id = data.vsphere_network.vmnet100.id
  }
  network_interface {
    network_id = data.vsphere_network.vmnet1000.id
  }
  disk {
    label = "disk"
    size = 20
  }
}


