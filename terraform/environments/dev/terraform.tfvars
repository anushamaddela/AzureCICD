subscription_id = "56758eac-e665-4408-9115-7a8fca174138"

resource_group_name = "rg-enterprise-dev"

location = "Central India"

storage_account_name = "stenterprise2026dev01"

container_name = "tfstate"

vnet_name = "vnet-enterprise-dev"

address_space = [
  "10.0.0.0/16"
]

aks_subnet_name = "aks-subnet"

aks_subnet_prefix = [
  "10.0.1.0/24"
]

vm_subnet_name = "vm-subnet"

vm_subnet_prefix = [
  "10.0.2.0/24"
]

appgw_subnet_name = "appgw-subnet"

appgw_subnet_prefix = [
  "10.0.3.0/24"
]

aks_nsg_name = "nsg-aks-dev"

vm_nsg_name = "nsg-vm-dev"

appgw_nsg_name = "nsg-appgw-dev"

acr_name = "acrenterprisedev2026"