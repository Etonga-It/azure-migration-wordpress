terraform {
  required_version = ">= 1.5.0"

  backend "azurerm" {
    resource_group_name  = "rg-tfstate-wordpress"
    storage_account_name = "sttfstatewp250584071"
    container_name       = "tfstate"
    key                  = "wordpress.tfstate"
    use_azuread_auth     = true
  }
}