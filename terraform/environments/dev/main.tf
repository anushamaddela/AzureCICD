module "bootstrap" {
  source = "../../modules/bootstrap"

  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = var.storage_account_name
  container_name       = var.container_name
}

module "network" {

  source = "../../modules/network"

  resource_group_name = module.bootstrap.resource_group_name
  location            = var.location

  vnet_name = var.vnet_name

  address_space = var.address_space

  aks_subnet_name   = var.aks_subnet_name
  aks_subnet_prefix = var.aks_subnet_prefix

  vm_subnet_name   = var.vm_subnet_name
  vm_subnet_prefix = var.vm_subnet_prefix

  appgw_subnet_name   = var.appgw_subnet_name
  appgw_subnet_prefix = var.appgw_subnet_prefix
}

module "nsg" {

  source = "../../modules/nsg"

  resource_group_name = module.bootstrap.resource_group_name
  location            = var.location

  aks_nsg_name   = var.aks_nsg_name
  vm_nsg_name    = var.vm_nsg_name
  appgw_nsg_name = var.appgw_nsg_name

  aks_subnet_id   = module.network.aks_subnet_id
  vm_subnet_id    = module.network.vm_subnet_id
  appgw_subnet_id = module.network.appgw_subnet_id
}

module "acr" {

  source = "../../modules/acr"

  acr_name            = var.acr_name
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
}