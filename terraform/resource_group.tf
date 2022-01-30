resource "azurerm_resource_group" "resource_group" {
  name     = "rg-${var.product}-${var.environment}-${var.az_region_abbr_map[var.az_region]}"
  location = var.az_region
}
