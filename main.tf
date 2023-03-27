
# Pull existing virtual network info
data "azurerm_virtual_network" "vnet1" {
  name                = "aks-vnet-test"
  resource_group_name = "Group121"
}


data "azurerm_virtual_network" "vnet2" {
  name                = "aks-vnet-beta"
  resource_group_name = "kubernetes-cluster-rg"
}

resource "azurerm_virtual_network_peering" "peering1" {
  name                         = "${data.azurerm_virtual_network.vnet1.name}-to-${data.azurerm_virtual_network.vnet2.name}"
  resource_group_name          = data.azurerm_virtual_network.vnet1.resource_group_name
  virtual_network_name         = data.azurerm_virtual_network.vnet1.name
  remote_virtual_network_id    = data.azurerm_virtual_network.vnet2.id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
  allow_gateway_transit        = true
  use_remote_gateways          = false
}

resource "azurerm_virtual_network_peering" "peering2" {
  name                         = "${data.azurerm_virtual_network.vnet2.name}-to-${data.azurerm_virtual_network.vnet1.name}"
  resource_group_name          = data.azurerm_virtual_network.vnet2.resource_group_name
  virtual_network_name         = data.azurerm_virtual_network.vnet2.name
  remote_virtual_network_id    = data.azurerm_virtual_network.vnet1.id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
  allow_gateway_transit        = true
  use_remote_gateways          = false
}









