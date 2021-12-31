variable "resource_group_name" {
	type = string
  	description = "RG name in Azure"
}

variable "app_service_name" {
	type = string
  	description = "app service name Azure"
}

variable "location" {
	type = string
  	description = "Resources location in Azure"
}

variable "os_type" {
	type = string
  	description = "os_type in Azure"
}

variable "azurerm_app_service_plan" {
	type = string
  	description = "azurerm app service_plan in Azure"
}
