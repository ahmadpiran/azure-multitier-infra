resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_virtual_network" "main" {
  name                = var.virtual_network_name
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  address_space       = ["10.16.0.0/16"]
}

resource "azurerm_subnet" "web-001" {
  name                 = "snet-web-001"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.16.0.0/20"]
}

resource "azurerm_subnet" "app-001" {
  name                 = "snet-app-001"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.16.16.0/20"]
}

resource "azurerm_subnet" "db-001" {
  name                 = "snet-db-001"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.16.32.0/20"]
}

resource "azurerm_subnet" "rsrv-001" {
  name                 = "snet-rsrv-001"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.16.48.0/20"]
}

resource "azurerm_subnet" "web-002" {
  name                 = "snet-web-002"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.16.64.0/20"]
}

resource "azurerm_subnet" "app-002" {
  name                 = "snet-app-002"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.16.80.0/20"]
}

resource "azurerm_subnet" "db-002" {
  name                 = "snet-db-002"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.16.96.0/20"]
}

resource "azurerm_subnet" "rsrv-002" {
  name                 = "snet-rsrv-002"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.16.112.0/20"]
}

resource "azurerm_subnet" "web-003" {
  name                 = "snet-web-003"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.16.128.0/20"]
}

resource "azurerm_subnet" "app-003" {
  name                 = "snet-app-003"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.16.144.0/20"]
}

resource "azurerm_subnet" "db-003" {
  name                 = "snet-db-003"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.16.160.0/20"]
}

resource "azurerm_subnet" "rsrv-003" {
  name                 = "snet-rsrv-003"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.16.176.0/20"]
}