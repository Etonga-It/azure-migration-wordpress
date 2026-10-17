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