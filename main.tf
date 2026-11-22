resource "azurerm_resource_group" "main" {
  name     = "rg-wordpress-dev"
  location = "francecentral"
}

module "network" {
  source = "./modules/network"

  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  vnet_name           = "vnet-wordpress-dev"
  vnet_address_space  = ["10.10.0.0/16"]
}

resource "random_string" "suffix" {
  length  = 6
  lower   = true
  upper   = false
  numeric = true
  special = false
}

resource "random_password" "mysql_password" {
  length           = 20
  special          = true
  override_special = "-_!"
  min_upper        = 1
  min_lower        = 1
  min_numeric      = 1
  min_special      = 1
}
module "keyvault" {
  source = "./modules/keyvault"

  resource_group_name  = azurerm_resource_group.main.name
  location             = azurerm_resource_group.main.location
  name                 = "kv-wp-dev-${random_string.suffix.result}"
  mysql_admin_password = random_password.mysql_password.result
}


