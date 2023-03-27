terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.49.0"
    }
  }
  backend "azurerm" {
    storage_account_name = "vnetpeeringtfstate"
    container_name       = "vnettfstate"
    key                  = "terraform.tfstate"
    # access_key               = lookup(env, "ARM_ACCESS_KEY")
  }

}

provider "azurerm" {
  features {

  }
  # Configuration options
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
  #   access_key      = var.access_key
}
#configure storage backends

 