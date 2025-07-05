data "azurerm_subnet" "subnet" {
  name                 = "subnetamazon"
  virtual_network_name = "vnetamazonnew"
  resource_group_name  = "rgamazon"
}

data "azurerm_network_interface" "pintu" {
  name                = "nicamazon"
  resource_group_name = "rgamazon"
}

data "azurerm_network_security_group" "chintu" {
  name                = "nsgamazon"
  resource_group_name = "rgamazon"
}
