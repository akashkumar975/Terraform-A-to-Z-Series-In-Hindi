terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.37.0"
    }
    aws = {
      source = "hashicorp/aws"
      version = "6.4.0"
    }
  }
}

provider "azurerm" {
 features {
   
 }
}

provider "aws" {
  # Configuration options
}