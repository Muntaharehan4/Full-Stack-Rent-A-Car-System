# Create the resource group
resource "azurerm_resource_group" "rgtest" {
  name = var.rgname
  location = var.location
}

# create password for sql
resource "random_password" "admin_password" {
  count       = var.password == null ? 1 : 0
  length      = 20
  special     = true
  min_numeric = 1
  min_upper   = 1
  min_lower   = 1
  min_special = 1
}

locals {
  admin_password = try(random_password.admin_password[0].result, var.password)
}

# Create the sql server
resource "azurerm_mssql_server" "server" {
  name                         = var.sqlname
  resource_group_name          = azurerm_resource_group.rgtest.name
  location                     = azurerm_resource_group.rgtest.location
  administrator_login          = var.username
  administrator_login_password = local.admin_password
  version                      = "12.0"
}

# Create the sql db

resource "azurerm_mssql_database" "db" {
  name      = var.sql_db_name
  server_id = azurerm_mssql_server.server.id
}

# Create the VNET
resource "azurerm_virtual_network" "vnettest" {
  name                = var.vn_name
  resource_group_name = azurerm_resource_group.rgtest.name
  location            = azurerm_resource_group.rgtest.location
  address_space       = ["10.0.0.0/16"]

  subnet {
    name           = "app-subnet"
    address_prefix = "10.0.1.0/24"
  }
}

# Create the Windows App Service Plan

resource "azurerm_service_plan" "asptest" {

  name                = var.aspname
  resource_group_name = azurerm_resource_group.rgtest.name
  location            = azurerm_resource_group.rgtest.location
  os_type             = "Windows"
  sku_name            = "B1"
}

# Create the web apps, pass in the App Service Plan ID and attached VNET

 resource "azurerm_windows_web_app" "webapptest" {
  name                = "${var.webapp01}-webapp"
  resource_group_name = azurerm_resource_group.rgtest.name
  location            = azurerm_resource_group.rgtest.location
  service_plan_id     = azurerm_service_plan.asptest.id
  https_only          = true
  site_config {
    minimum_tls_version = "1.2"
    ftps_state         = "FtpsOnly"
    always_on          = "true"
    http2_enabled      = "true"
  }
   app_settings = {
    WEBSITE_VNET_ROUTE_ALL = "1"
    VNET_NAME              = azurerm_virtual_network.vnettest.name
  }
}

 resource "azurerm_windows_web_app" "webapptest2" {
  name                = "${var.webapp02}-webapp"
  resource_group_name = azurerm_resource_group.rgtest.name
  location            = azurerm_resource_group.rgtest.location
  service_plan_id     = azurerm_service_plan.asptest.id
  https_only          = true
  site_config {
    minimum_tls_version = "1.2"
    ftps_state         = "FtpsOnly"
    always_on          = "true"
    http2_enabled      = "true"
  }
   app_settings = {
    WEBSITE_VNET_ROUTE_ALL = "1"
    VNET_NAME              = azurerm_virtual_network.vnettest.name
  }
}
# Create the keyvault and add access poilicies
data "azurerm_client_config" "current" {}
resource "azurerm_key_vault" "keyvault01" {
  name                = var.kvname
  resource_group_name = azurerm_resource_group.rgtest.name
  location            = azurerm_resource_group.rgtest.location
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 90
  purge_protection_enabled    = false
  sku_name = "standard"
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
    secret_permissions = [
      "Backup",
      "Delete",
      "Get",
      "List",
      "Purge", 
      "Recover",
      "Restore",
      "Set"
    ]
    }
}

#Create Secrets
resource "azurerm_key_vault_secret" "secret01" {
  name         = "sql-connection"
  value        = "Server=${azurerm_mssql_server.server.fully_qualified_domain_name};Database=${azurerm_mssql_database.db.name};User Id=${azurerm_mssql_server.server.administrator_login};Password=${azurerm_mssql_server.server.administrator_login_password};"
  key_vault_id = azurerm_key_vault.keyvault01.id
}
resource "azurerm_key_vault_secret" "secret02" {
  name         = "EncryptionKey"
  value        = "EncryptionKey"
  key_vault_id = azurerm_key_vault.keyvault01.id
}


