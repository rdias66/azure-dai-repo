module "vm" {
  source              = "./modules/vm"
  resource_group_name = "rg-azure-fullstack"
  location            = "East US"
  vnet_name           = "vnet-fullstack"
  vnet_address_space  = ["10.0.0.0/16"]
  subnet_name         = "subnet-fullstack"
  subnet_prefix       = ["10.0.1.0/24"]
  nic_name            = "nic-fullstack"
  vm_name             = "vm-fullstack"
  vm_size             = "Standard_B1s"
  vm_admin_username   = "adminuser"
  vm_admin_password   = "your_password_here"
  nsg_name            = "nsg-fullstack"
}
