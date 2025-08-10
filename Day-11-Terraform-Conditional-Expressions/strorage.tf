# resource "azurerm_resource_group" "example" {
#   name     = var.rg_name
#   location = var.location
# }

# resource "azurerm_storage_account" "example" {
#   name                     =var.storage_account_name
#   resource_group_name      = azurerm_resource_group.example.name
#   location                 = azurerm_resource_group.example.location
#   account_tier             = "Standard"
#   account_replication_type = var.env=="prod"?"GRS":"LRS"

#   tags = {
#     environment = "staging"
#   }
# }

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}
 
resource "azurerm_storage_account" "example1" {
  name                     = "akash987654321"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  count = var.purpose == "dev" ? 1 : 0
}
resource "azurerm_storage_account" "example2" {
  name                     = "akash98765432144"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  count = var.purpose == "prod" ? 1 : 0
}

variable "purpose" {
  
}