variable "subscription_id" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "container_name" {
  type = string
}

variable "vnet_name" {}

variable "address_space" {}

variable "aks_subnet_name" {}

variable "aks_subnet_prefix" {}

variable "vm_subnet_name" {}

variable "vm_subnet_prefix" {}

variable "appgw_subnet_name" {}

variable "appgw_subnet_prefix" {}

variable "aks_nsg_name" {}

variable "vm_nsg_name" {}

variable "appgw_nsg_name" {}

variable "acr_name" {}