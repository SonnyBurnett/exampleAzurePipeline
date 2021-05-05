provider "azurerm" {
  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  version         = "~> 2.30.0"
  features {}
}
resource "azurerm_resource_group" "rg" {
  location = "westeurope"
  name     = "rg-tf-state"
}
resource "azurerm_storage_account" "sa" {
  name                     = "ingsa001"
  resource_group_name      = "rg-tf-state"
  location                 = "westeurope"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
resource "azurerm_storage_container" "sc" {
  name                 = "ingsc001"
  storage_account_name = "ingsa001"
  depends_on           = [azurerm_storage_account.sa]
}
