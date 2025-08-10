# resource "azurerm_resource_group" "akash" {
#   count = 4

#   name  = var.rg_name[count.index]
#   location = "West Europe"
# }

# variable "rg_name" {
#     type = list 
#     default = ["demo-rg9","demo-rg91","demo-rg92"]
  
# }


# resource "azurerm_resource_group" "name" {
#     for_each = var.rg_details
#     location= each.key 
#     name  = each.value
  
# }

# variable "rg_details" {
#     type = map 
#     default = {
#         eastus = "dev-rg" 
#         westus = "prod-rg"
#         eastus2 = "qa-rg"
#     }
  
# }

variable "rg_name" {
    type = list 
    default = ["demo-rg9","demo-rg91","demo-rg92"]
  
}


resource "azurerm_resource_group" "name" {
    for_each =toset (var.rg_name)
    location= "eastus"
    name  = each.key
  
}