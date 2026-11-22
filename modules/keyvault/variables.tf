variable "resource_group_name" {
  description = "Name of the resource group where the key vault is created."
  type        = string
}

variable "location" {
  description = "Azure region of the key vault (for example francecentral)."
  type        = string
}

variable "name" {
  description = "Name of the key vault: 3 to 24 characters, letters, digits and hyphens, unique across Azure."
  type        = string
}

variable "mysql_admin_password" {
  description = "Administrator password of the MySQL server, stored as a secret in the key vault."
  type        = string
  sensitive   = true
}

variable "tags" {
  description = "Tags applied to every resource created by this module."
  type        = map(string)
  default     = {}
}