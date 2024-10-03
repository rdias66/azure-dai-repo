resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = var.acr_resource_group_name
  location            = var.location
  sku                 = var.acr_sku

  admin_enabled = var.acr_admin_enabled
}

# Optionally, you can create a role assignment to give the VM access to push/pull images from the ACR.
resource "azurerm_role_assignment" "acr_role_assignment" {
  scope                = azurerm_container_registry.acr.id
  role_definition_name = "AcrPull"
  principal_id         = var.vm_principal_id  # This will be the VM's managed identity or service principal
}
