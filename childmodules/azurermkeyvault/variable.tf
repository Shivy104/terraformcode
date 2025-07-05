variable "resource_group_name" {
  description = "The name of the resource group to create."
  type        = string  
  
}

variable "location" {
  
    description = "The Azure region where the resources will be created."
    type        = string
}

variable "name" {
  description = "The name of the Key Vault."
  type        = string
}
