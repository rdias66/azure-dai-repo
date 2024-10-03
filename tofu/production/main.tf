module "vm" {
  source                 = "../modules/vm"
  vm_resource_group_name = var.vm_resource_group_name
  location               = var.location
  vnet_name              = var.vnet_name
  vnet_address_space     = var.vnet_address_space
  subnet_name            = var.subnet_name
  subnet_prefix          = var.subnet_prefix
  nic_name               = var.nic_name
  vm_name                = var.vm_name
  vm_size                = var.vm_size
  vm_admin_username      = var.vm_admin_username
  vm_admin_password      = var.vm_admin_username
  nsg_name               = var.nsg_name
}

module "acr" {
  source                  = "../modules/acr"
  acr_name                = var.acr_name
  acr_resource_group_name = var.acr_resource_group_name
  location                = var.location
  acr_sku                 = var.acr_sku
  acr_admin_enabled       = var.acr_admin_enabled
  vm_principal_id         = var.vm_principal_id # Pass the VM's principal ID for role assignment
}

