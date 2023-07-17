variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the app service"
}

variable "location" {
  type        = string
  description = "The name of the Azure region where to create the app service"
}

variable "resource_suffix_kebabcase" {
  type        = string
  description = "The app service resource name suffix"
}

variable "storage_account_name" {
  type        = string
  description = "The storage account name to retrieve the other states from"
}

variable "storage_account_container_name" {
  type = string
  description = "The storage account container name to retrieve the other states from"
}

variable "app_service_subnet_id" {
  type        = string
  description = "The app service subnet id"
}

variable "paas_subnet_id" {
  type        = string
  description = "The paas subnet id"
}

variable "app_service_plan_sku" {
  type        = string
  description = "The app service plan SKU"
  validation {
    condition     = can(regex("F1|D1|B1", var.app_service_plan_sku))
    error_message = "The App Service Plan SKU is not valid."
  }
}