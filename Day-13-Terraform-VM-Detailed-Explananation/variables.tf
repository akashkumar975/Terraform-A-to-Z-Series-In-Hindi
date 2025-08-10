variable "rg_details" {
  type = map(any)


}

variable "vm_configs" {
  type = object({
    vm_name                      = string
    vm_size                      = string
    vm_admin_username            = string
    vm_admin_password            = string
    os_disk_storage_account_type = string
    publisher                    = string
    offer                        = string
    sku                          = string
    version                      = string
  })

}

variable "vnet_config" {
  type = object({
    vnet_name           = string
    vnet_address_space  = list(string)
    sbnet_name          = string
    sbnet_address_space = list(string)
  })

}