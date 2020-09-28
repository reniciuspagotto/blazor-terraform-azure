provider "azurerm" {
    version = "~>2.20.0"
    features {}
}

terraform {
  backend "azurerm" {
    storage_account_name = "ranchodev"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    access_key = "jfhc549iLKgKgK689jkS4muOUJ8VK574xnFjFcbuGb9FfsF1qRIG485thgAZGdPzDokbiRCtHQcnVcFYT/+NMg=="
  }
}

resource "azurerm_resource_group" "main" {
    name     = var.resource_group_name
    location = var.service_location
}

resource "azurerm_app_service_plan" "main" {
    name                = var.service_plan_name
    location            = var.service_location
    resource_group_name = azurerm_resource_group.main.name

    sku {
        tier = "Basic"
        size = "F1"
    }
}

resource "azurerm_app_service" "main" {
    name                = var.app_service_plan_name
    location            = var.service_location
    resource_group_name = azurerm_resource_group.main.name
    app_service_plan_id = azurerm_app_service_plan.main.id
}