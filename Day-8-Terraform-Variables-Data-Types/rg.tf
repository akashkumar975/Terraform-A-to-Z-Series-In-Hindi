resource "azurerm_resource_group" "akash1" {
  name  = var.rg_details.rgname 
  location = var.rg_details.location
}


variable "rg_details" {
    type =map 
    default = {
        rgname="demo-rg82"
        location= "eastus"

    }
  
}

# resource "azurerm_resource_group" "akash1" {
#   name  = var.rg_details[0]
#   location = var.rg_details[1]
# }

# variable "rg_details" {
#     type =list 
#     default = ["demo-rg812","eastus"]
  
# }



  

