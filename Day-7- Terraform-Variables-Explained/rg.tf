resource "azurerm_resource_group" "example" {
  name     = var.rg_name
  location = var.location
}


variable "rg_name" {
  default ="eastus"

  
  
}

variable "location" {

  
}