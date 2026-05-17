resource "azurerm_virtual_network" "vnet" {
  for_each            = var.vnet
  name                = each.value.vnet_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  address_space       = each.value.address_space
}



resource "azurerm_virtual_network_peering" "peer1to2" {
  name                      = "peer1to2"
  resource_group_name       = azurerm_virtual_network.vnet["vnet1"].resource_group_name
  virtual_network_name      = azurerm_virtual_network.vnet["vnet1"].name
  remote_virtual_network_id = azurerm_virtual_network.vnet["vnet2"].id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
}

resource "azurerm_virtual_network_peering" "peer2to1" {
  name                      = "peer2to1"
  resource_group_name       = azurerm_virtual_network.vnet["vnet2"].resource_group_name
  virtual_network_name      = azurerm_virtual_network.vnet["vnet2"].name
  remote_virtual_network_id = azurerm_virtual_network.vnet["vnet1"].id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
}