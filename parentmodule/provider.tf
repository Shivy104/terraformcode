terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
}

provider "azurerm" {
  # Configuration options

      features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
    subscription_id = "212ab218-5df9-48bc-afac-cd9389093c1b"
}