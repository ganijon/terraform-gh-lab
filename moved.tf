moved {
  from = azurerm_app_service_virtual_network_swift_connection.this
  to   = module.app_service.azurerm_app_service_virtual_network_swift_connection.this
}

moved {
  from = azurerm_linux_web_app.this
  to   = module.app_service.azurerm_linux_web_app.this
}

moved {
  from = azurerm_private_endpoint.this
  to   = module.app_service.azurerm_private_endpoint.this
}

moved {
  from = azurerm_service_plan.this
  to   = module.app_service.azurerm_service_plan.this
}
