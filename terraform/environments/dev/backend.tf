terraform {
  backend "azurerm" {
    resource_group_name  = "rg-enterprise-dev"
    storage_account_name = "stenterprise2026dev01"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}