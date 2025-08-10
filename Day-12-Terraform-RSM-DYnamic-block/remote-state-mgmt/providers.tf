terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.110.0"
    }
  }

  # backend "azurerm" {
  #   storage_account_name = "dm234234"
  #   resource_group_name  = "DefaultResourceGroup-CCAN"
  #   container_name = "tfdemo"
  #   key ="dev.terraform.tfstate"
    
  # }
}

provider "azurerm" {
  features {
    
  }
}