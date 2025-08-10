terraform {
    required_providers {
    azurerm = {
      source  = "registry.terraform.io/hashicorp/azurerm"
      version = "~> 3.9"
    }   
    random = {
      source  = "registry.terraform.io/hashicorp/random"
      version = "~> 3.0"
    }
    }
}
provider "azurerm" {
  
  features {}
}

