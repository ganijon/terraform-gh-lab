module "app_service" {
  source                         = "./modules/app_service"
  resource_group_name            = azurerm_resource_group.this.name
  location                       = azurerm_resource_group.this.location
  resource_suffix_kebabcase      = local.resource_suffix_kebabcase
  storage_account_name           = var.storage_account_name
  storage_account_container_name = var.storage_account_container_name
  app_service_subnet_id          = local.app_service_subnet_id
  paas_subnet_id                 = local.paas_subnet_id
  app_service_plan_sku           = "B1"
}
