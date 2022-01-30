output "location" {
  value = var.az_region
}

output "resource_group_name" {
  value = azurerm_resource_group.resource_group.name
}

output "app_service_plan_name" {
  value = azurerm_app_service_plan.app_service_plan.name
}

output "app_host" {
  value = azurerm_app_service.app_service.default_site_hostname
}
