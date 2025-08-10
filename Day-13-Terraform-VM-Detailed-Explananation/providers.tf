terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
    storage_account_name = "demostrg324"
    resource_group_name  = "demo-str"
    container_name       = "tfsstate"
    key                  = "dev.terraform.tfstate"

  }
}

provider "azurerm" {
  features {

  }
}