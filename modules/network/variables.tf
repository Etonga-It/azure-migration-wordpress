variable "resource_group_name" {
  description = "Name of the resource group where the network resources are created."
  type        = string
}

variable "location" {
  description = "Azure region for all network resources (for example francecentral)."
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual network."
  type        = string
}

variable "vnet_address_space" {
  description = "Address space of the virtual network, in CIDR notation."
  type        = list(string)
}

variable "subnets" {
  description = "Subnets of the virtual network, with their address prefix."
  type        = map(string)
  default = {
    web   = "10.10.1.0/24"
    data  = "10.10.2.0/24"
    admin = "10.10.3.0/24"
  }
}

variable "tags" {
  description = "Tags applied to every resource created by this module."
  type        = map(string)
  default     = {}
}