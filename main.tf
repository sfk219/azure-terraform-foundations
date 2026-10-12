resource "azurerm_resource_group" "main" { name = "${var.prefix}-rg"; location = var.location }
resource "azurerm_virtual_network" "main" { name = "${var.prefix}-vnet"; address_space = ["10.20.0.0/16"]; location = azurerm_resource_group.main.location; resource_group_name = azurerm_resource_group.main.name }
resource "azurerm_subnet" "application" { name = "app-subnet"; resource_group_name = azurerm_resource_group.main.name; virtual_network_name = azurerm_virtual_network.main.name; address_prefixes = ["10.20.1.0/24"] }
resource "azurerm_network_security_group" "application" { name = "${var.prefix}-nsg"; location = azurerm_resource_group.main.location; resource_group_name = azurerm_resource_group.main.name }
resource "azurerm_subnet_network_security_group_association" "app" { subnet_id = azurerm_subnet.application.id; network_security_group_id = azurerm_network_security_group.application.id }
