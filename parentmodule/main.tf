module "resourcegroup" {
    source = "../childmodules/azurermresourcegroup"
    name = "rgamazon"
    location = "Central India"
}

module "vnet" {
    depends_on = [ module.resourcegroup ]
    source = "../childmodules/azurermvnet"
    name = "vnetamazonnew"
    resource_group_name = "rgamazon"
    location = "Central India"
}

module "subnet" {
    depends_on = [ module.vnet ]
    source = "../childmodules/azurermsubnet"
    name = "subnetamazon"
    resource_group_name = "rgamazon"
    virtual_network_name = "vnetamazonnew"
  
}

data "azurerm_public_ip" "pip" {
  name                = "pipamazon"
  resource_group_name = "rgamazon"
}

data "azurerm_network_security_group" "nsg" {
  name                = "nsgamazon"
  resource_group_name = "rgamazon"
}

module "nic" {
    depends_on = [ module.subnet ]
    source = "../childmodules/azurermnic"
    name = "nicamazon"
    resource_group_name = "rgamazon"
    location = "Central India"
    public_ip_address_id = data.azurerm_public_ip.pip.id
    network_security_group_id = data.azurerm_network_security_group.nsg.id
    # subnet_id = module.subnet.id
  
}

module "vm" {
  depends_on           = [module.nic]
  source               = "../childmodules/azurermvm"
  name                 = "vmamazon"
  resource_group_name  = "rgamazon"
  location             = "Central India"

  admin_username       = "adminuser"
  admin_password       = "P@ssw0rd1234!"
}

module "kv" {
    depends_on = [ module.resourcegroup ]
    source = "../childmodules/azurermkeyvault"
    name = "kvamazon"
    resource_group_name = "rgamazon"
    location = "Central India"
  
}

module "nsg" {
    source = "../childmodules/azurermnsg"
    name = "nsgamazon"
    resource_group_name = "rgamazon"
    location = "Central India"  
  
}

module "pip" {
    depends_on = [ module.nsg ]
    source = "../childmodules/azurermpip"
    name = "pipamazon"
    resource_group_name = "rgamazon"
    location = "Central India"
  
}
