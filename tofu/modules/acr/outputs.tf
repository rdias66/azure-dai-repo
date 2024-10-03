output "acr_id" {
  value       = azurerm_container_registry.acr.id
  description = "The ID of the Azure Container Registry"
}

output "acr_login_server" {
  value       = azurerm_container_registry.acr.login_server
  description = "The login server of the ACR (used for pushing/pulling images)"
}

output "acr_admin_username" {
  value       = azurerm_container_registry.acr.admin_username
  description = "The admin username for the ACR"
}

output "acr_admin_password" {
  value       = azurerm_container_registry.acr.admin_password
  description = "The admin password for the ACR"
  sensitive   = true
}
