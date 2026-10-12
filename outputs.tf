output "resource_group" {
  value = azurerm_resource_group.main.name
}
output "virtual_network_id" {
  value = azurerm_virtual_network.main.id
}
output "subnet_id" {
  value = azurerm_subnet.application.id
}
