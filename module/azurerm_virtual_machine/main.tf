resource "azurerm_linux_virtual_machine" "vm_block" {
for_each = var.vms
name = each.value.name
location = each.value.location
resource_group_name = each.value.resource_group_name
size = each.value.size
admin_username = each.value.admin_username
admin_password = each.value.admin_password
network_interface_ids = []

disable_password_authentication = false

os_disk {
  caching = each.value.caching
  storage_account_type = each.value.storage_account_type

}

source_image_reference {
  publisher = each.value.publisher
  offer = each.value.offer
  sku = each.value.sku
  version = each.value.version
}
  
}