variable "name" {
  description = "The name of the virtual network."
  type        = string
  
}

variable "location" {
  description = "The Azure location where the virtual network should exist."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the virtual network should be created."
  type        = string
}

