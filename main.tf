
terraform {
  required_providers {
    datadog = {
      source = "DataDog/datadog"
    }
  }
}


# Configure the Datadog provider
provider "datadog" {
  api_key = var.datadog_api_key
  app_key = var.datadog_app_key
}

variable "datadog_api_key" {
  type = string
}

variable "datadog_app_key" {
  type = string
}

output "datadog_api_key" {
  value = var.datadog_api_key
}

output "datadog_app_key" {
  value = var.datadog_app_key
}