variable "rg_names" {
  type    = list(string)
  default = ["dev12312", "prod1212"]
}

variable "rg_locations" {
  type    = list(string)
  default = ["eastus", "westus"]
}

resource "azurerm_resource_group" "example" {
  count    = length(var.rg_names)
  name     = var.rg_names[count.index]
  location = var.rg_locations[count.index]
}
