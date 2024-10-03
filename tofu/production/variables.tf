#VM Variables
variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}
variable "location" {
  type        = string
  description = "Location of the resources"
  default     = "Brazil South"  # Adjust based on your preferred region
}
variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
}
variable "vnet_address_space" {
  type        = list(string)
  description = "Address space for the virtual network"
  default     = ["10.0.0.0/16"]
}
variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
}

variable "subnet_prefix" {
  type        = list(string)
  description = "Subnet prefix for the subnet"
  default     = ["10.0.1.0/24"]
}
variable "nic_name" {
  type        = string
  description = "Name of the network interface"
}
variable "vm_name" {
  type        = string
  description = "Name of the virtual machine"
}
variable "vm_size" {
  type        = string
  description = "Size of the VM"
  default     = "Standard_B1s"  # Free tier VM size
}
variable "vm_admin_username" {
  type        = string
  description = "Admin username for the VM"
}
variable "vm_admin_password" {
  type        = string
  description = "Admin password for the VM"
  sensitive   = true
}
variable "nsg_name" {
  type        = string
  description = "Name of the Network Security Group"
}
