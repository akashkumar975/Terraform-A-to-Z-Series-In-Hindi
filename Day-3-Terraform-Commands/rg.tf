# we want to create a resource group

resource "azurerm_resource_group" "akash" {
  name  = "example"
  location = "West Europe"
}