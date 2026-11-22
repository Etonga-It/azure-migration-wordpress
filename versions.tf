terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  resource_providers_to_register = [
    "Microsoft.Network",
    "Microsoft.KeyVault",
  ]

  features {
    enhanced_validation {
      locations          = true
      resource_providers = true
    }
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}