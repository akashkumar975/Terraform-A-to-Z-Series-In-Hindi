resource "azurerm_linux_virtual_machine" "example" {
  name                = var.vm_configs.vm_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  size                = var.vm_configs.vm_size
  admin_username      = var.vm_configs.vm_admin_username
  admin_password      = var.vm_configs.vm_admin_password
  network_interface_ids = [
    azurerm_network_interface.example.id,
  ]

 disable_password_authentication =false

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = var.vm_configs.os_disk_storage_account_type

  }

  source_image_reference {
    publisher = var.vm_configs.publisher
    offer     = var.vm_configs.offer
    sku       = var.vm_configs.sku
    version   = var.vm_configs.version
  }
}