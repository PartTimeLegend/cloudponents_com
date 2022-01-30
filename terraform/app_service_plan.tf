resource "azurerm_app_service_plan" "app_service_plan" {
  name                = "plan-cloudponents-${var.environment}-${var.az_region_abbr_map[var.az_region]}"
  location            = azurerm_resource_group.resource_group.location
  resource_group_name = azurerm_resource_group.resource_group.name
  kind                = var.service_plan_kind
  reserved            = var.app_service_plan_reserved
  sku {
    tier = var.sku_tier
    size = var.sku_size
  }
}
