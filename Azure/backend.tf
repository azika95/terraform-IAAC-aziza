terraform {
  backend "azurerm" {
    resource_group_name  = "example"
    storage_account_name = "exampleaziza"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
    access_key           = ""
  }
}