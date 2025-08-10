data "azurerm_resource_group" "example" {
  name = "dm"
}

resource "azurerm_storage_account" "example" {
  name                     = "strg5784"
  resource_group_name      = data.azurerm_resource_group.example.name
  location                 = data.azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}