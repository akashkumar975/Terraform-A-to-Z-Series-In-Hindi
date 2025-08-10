# we want to create a resource group

resource "azurerm_resource_group" "akash" {
  name  = "demo-rg1"
  location = "West Europe"
}

resource "azurerm_resource_group" "akash1" {
  name  = "demo-rg2"
  location = "West Europe"
}