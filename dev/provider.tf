terraform {
	required_providers {
		azurerm = {
			source = "hashicorp/azurerm"
			version = "4.72.0"
			}
		}
backend "azurerm" {
	resource_group_name = "back-rg"
	storage_account_name = "backstrg"
	container_name = "backcont"
	key = "back.tfstate"
	}
}

provider "azurerm" {
	features {}
	subscription_id = "fa0b58e1-510e-484f-bda3-8cb2550c3aef"
}