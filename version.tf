terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0"
    }
  }
}

provider "azurerm" {
  resource_providers_to_register = [
    "Microsoft.Network",
  ]

  features {
    enhanced_validation {
      locations          = true
      resource_providers = true
    }
  }
}