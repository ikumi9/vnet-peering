resource "azurerm_resource_group" "rg" {
  name     = "remotestateRG"
  location = "eastus"
}

resource "azurerm_storage_account" "vnet_peering_storage_account" {
  name                     = "vnetpeeringtfstate"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}

resource "azurerm_storage_container" "vnet_peering_tfstate" {
  name                  = "vnettfstate"
  storage_account_name  = azurerm_storage_account.vnet_peering_storage_account.name
  container_access_type = "blob"
}