resource "azurerm_private_endpoint" "this" {
  name                = format("pe-%s", var.resource_suffix_kebabcase)
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.paas_subnet_id

  private_service_connection {
    name                           = format("psc-%s", var.resource_suffix_kebabcase)
    private_connection_resource_id = azurerm_linux_web_app.this.id
    subresource_names              = ["sites"]
    is_manual_connection           = false
  }
}
