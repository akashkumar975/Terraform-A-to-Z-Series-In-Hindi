resource "azurerm_resource_group" "example" {
  name     = var.rg_details.rg_name
  location = var.rg_details.location
}
