resource "random_string" "random-sa" {
  length = 6
  special = true
  override_special = "/@£$"
}


resource "azurerm_storage_account" "fg-datalake-sa" {
  name                = "fgdatalake${random_string.random-sa.result}"
  resource_group_name = azurerm_resource_group.adf-rg.name

  location                 = azurerm_resource_group.adf-rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"



  tags = {
    environment = "staging"
  }
}