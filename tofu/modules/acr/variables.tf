variable "acr_name" {
  type        = string
  description = "Name of the Azure Container Registry"
}

variable "acr_resource_group_name" {
  type        = string
  description = "The resource group in which the ACR will be created"
}

variable "location" {
  type        = string
  description = "The Azure region where ACR will be created"
  default     = "Brazil South"
}

variable "acr_sku" {
  type        = string
  description = "The SKU for the Azure Container Registry"
  default     = "Basic"  # Use 'Basic' for the free tier
}

variable "acr_admin_enabled" {
  type        = bool
  description = "Whether to enable the admin user for ACR"
  default     = true
}

variable "vm_principal_id" {
  type        = string
  description = "The principal ID of the VM for role assignment"
  default     = ""
}
