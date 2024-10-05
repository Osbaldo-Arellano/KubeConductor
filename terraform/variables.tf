# variables.tf
variable "subscription_id" {
  description = "Azure Subscription ID"
}

variable "resource_group_name" {
  description = "Name of the Resource Group"
  default     = "terraform-aks-rg"
}
