resource "azurerm_resource_group" "rsg1" {
    name = var.rsg
    location = var.location
  
}


resource "azurerm_virtual_network" "vnet1" {
  name                = var.vnet
  location            = azurerm_resource_group.rsg1.location
  resource_group_name = azurerm_resource_group.rsg1.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name             = "subnet1"
    address_prefixes = ["10.0.1.0/24"]
  
}
}
    