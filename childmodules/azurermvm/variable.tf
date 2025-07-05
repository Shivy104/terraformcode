variable "resource_group_name" {
  description = "The name of the vm resource group."
  type        = string
  
}

variable "location" {
  description = "The Azure region where the resources will be created."
  type        = string
}

variable "name" {
  description = "The name of the virtual machine."
  type        = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type = string
}
