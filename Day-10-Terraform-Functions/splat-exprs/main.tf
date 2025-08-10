resource "azurerm_resource_group" "example" {
  name     ="demo-RGghjgjh"
  location = "eastus"
}

resource "azurerm_public_ip" "example" {
  name                = var.mypip[count.index]
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"
  count = 4
  sku = "Standard"
}


variable "mypip"{
  type = list
  default = ["prod-pip","dev-pip","test-pip","qa-pip"]
}


output "pip_name" {
  value=  azurerm_public_ip.example[*].name
}

output "pip_address" {
  value=  azurerm_public_ip.example[*].ip_address
}

output "ips_name_add" {
    value= zipmap( azurerm_public_ip.example[*].name,azurerm_public_ip.example[*].ip_address)
  
}