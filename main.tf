terraform {
  backend "azurerm" {
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "default" {
  name = "default"
  location = "westus2"
}