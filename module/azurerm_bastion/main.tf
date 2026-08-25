resource "azurerm_bastion_host" "bastion_block" {
    for_each = var.bastions
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group_name

    ip_configuration {
      name = "configuration"
      subnet_id =data.azurerm_subnet.data_subnet_block[each.key].id
      public_ip_address_id =data.azurerm_public_ip.data_pip_block[each.key].id
    }
  
}