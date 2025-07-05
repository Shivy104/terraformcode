variable "resource_group_name" {
  
    description = "The name of the resource group in which the network interface will be created."
    type        = string
}   

variable "name" {
  
    description = "The name of the network interface."
    type        = string
  
}

variable "location" {
  
    description = "The location/region where the network interface will be created."
    type        = string
}

variable "public_ip_address_id" {
  
    description = "The ID of the public IP address to associate with the network interface. If not provided, the NIC will not have a public IP."
    type        = string
    default     = null
  
}

variable "network_security_group_id" {
  
    description = "The ID of the network security group to associate with the network interface. If not provided, the NIC will not have a NSG associated."
    type        = string
    default     = null
  
}
