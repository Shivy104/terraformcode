
resource "azurerm_network_interface" "nic" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = "var.public_ip_address_id"
}
}


  resource "azurerm_network_interface_security_group_association" "nsg_assoc" {
  network_interface_id      = data.azurerm_network_interface.pintu.id
  network_security_group_id = data.azurerm_network_security_group.chintu.id
}
