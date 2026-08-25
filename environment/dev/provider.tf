terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "5.0.0"

    }
  }
  backend "azurerm" {
    resource_group_name = "maalpani"
    storage_account_name = "bluedrum"
    container_name = "bluedrumcontainer"
    key = "bluedrum.tfkey"
    
  }
}
provider "azurerm" {
    features {}
    subscription_id = "7cf9c45e-0a1e-4828-9c98-3e8f25397732"
  
}