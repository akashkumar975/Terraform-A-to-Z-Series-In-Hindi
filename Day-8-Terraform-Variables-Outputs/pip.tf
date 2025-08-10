resource "azurerm_resource_group" "example" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_public_ip" "example" {
  name                = var.pip_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"


}

variable "rg_name" {
    default = "demo-rg8"
  
}

variable "location" {
    default = "eastus"
  
}

variable "pip_name" {
    default = "demo-pip8"
  
}


output "pip_address" {
  value=   azurerm_public_ip.example.ip_address
}


output "pip_name" {
  value=   azurerm_public_ip.example.name
}

output "pip_details" {
    value = {
        pip_name=azurerm_public_ip.example.name
        pip_address=   azurerm_public_ip.example.ip_address
    }
  
}