# AZURE
variable "client_id" {
  type        = string
  description = "Client ID/Username for the Azure Provider"
  default     = "__azureClientId__"
}
variable "client_secret" {
  type        = string
  description = "Client Secret for the Azure Provider"
  default     = "__azureClientSecret__"
}
variable "subscription_id" {
  type        = string
  description = "Subscription ID for the Azure Provider"
  default     = "__azureSubscriptionId__"
}
variable "tenant_id" {
  type        = string
  description = "Tenant ID for the Azure Provider"
  default     = "__azureTenantId__"
}
