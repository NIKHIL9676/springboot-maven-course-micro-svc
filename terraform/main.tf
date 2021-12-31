 terraform {
  required_providers {
    azurerm = "2.52.0"
  }
}


provider "azurerm" {
  features {
  tenant_id       = "0dccbced-d942-4eb4-92f6-1f845c629bcd"
  subscription_id = "f87aaef8-047b-488d-bf1c-b9837e226a9f"
  client_id       = "-oX7Q~cWUnx2AT-hHPFET6SC_w7S.5QnBi_cJ"
  client_secret   = "e8a1d2e8-7ba2-4c3e-af23-3758bc2a1f44"
  }
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  }
resource "azurerm_app_service_plan" "appserviceplan" {
    name                = var.azurerm_app_service_plan
    location            = var.location
    resource_group_name = var.resource_group_name
    sku{
        tier = "Free"
        size = "F1"
    }           
}
resource "azurerm_app_service" "appserviceplan" {
    name = var.app_service_name
    location = var.location
    resource_group_name = var.resource_group_name
    app_service_plan_id = azurerm_app_service_plan.appserviceplan.id

}




