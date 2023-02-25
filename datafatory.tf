

resource "azurerm_data_factory" "fg-adf" {
  name                = "fg-adf-dev"
  location            = azurerm_resource_group.adf-rg.location
  resource_group_name = azurerm_resource_group.adf-rg.name
}