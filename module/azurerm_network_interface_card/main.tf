resource "azurerm_network_interface" "nic_block" {
    for_each = var.nics
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group_name

    ip_configuration {
      name = "internal"
      subnet_id = each.value.data.azurerm_subnet.data_subnet_block[each.key].id
      private_ip_address_allocation = "Dynamic"
    }

  
}