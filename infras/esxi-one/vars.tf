##
# Copyright (C) 2020 by Ciena Corporation & Dmitri Fedorov
##

variable "esxi_username" {
  description = "Username to connect to tne ESXi server"
  default = "root"
}

variable "esxi_hostname" {
  description = "Hostname or IP address of the ESXi server"
  default = "192.168.1.36"
}

