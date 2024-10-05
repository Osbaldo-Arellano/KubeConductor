# variables.tf
variable "resource_group_name" {
  description = "Name of the Resource Group"
  default     = "terraform-aks-rg"
}

variable "client_id" {
  description = "The Client ID of the Service Principal"
}

variable "client_secret" {
  description = "The Client Secret of the Service Principal"
}

variable "tenant_id" {
  description = "The Tenant ID of the Azure Active Directory"
}

variable "subscription_id" {
  description = "The Subscription ID where the resources will be created"
}

