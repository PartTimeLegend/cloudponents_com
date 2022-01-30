resource "azurerm_app_service" "app_service" {
  name                = "app-cloudponents-${var.environment}-${var.environment}-${var.az_region_abbr_map[var.az_region]}"
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  app_service_plan_id = azurerm_app_service_plan.app_service_plan.id

  https_only              = var.https_only
  client_affinity_enabled = var.client_affinity_enabled

  site_config {
    scm_type  = "VSTSRM"
    always_on = "true"

    linux_fx_version = "DOCKER|${var.docker_repo}/${var.docker_container}:${var.docker_container_version}"

    health_check_path = "/health"
  }
}
