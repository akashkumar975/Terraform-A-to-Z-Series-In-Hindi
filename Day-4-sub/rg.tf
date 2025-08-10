# we want to create a resource group

resource "azurerm_resource_group" "akash" {
  name  = "demo-rg3"
  location = "West Europe"
}
