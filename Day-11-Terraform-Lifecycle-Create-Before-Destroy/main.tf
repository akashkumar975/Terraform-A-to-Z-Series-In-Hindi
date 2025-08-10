resource "azurerm_resource_group" "akash1" {
  name  = "demo-rg11"
  location = "West Europe"
  lifecycle {
    create_before_destroy = true
  }
}