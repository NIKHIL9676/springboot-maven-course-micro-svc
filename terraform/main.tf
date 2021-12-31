provider "azurerm" {
  features {}
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




