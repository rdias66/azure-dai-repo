output "vm_id" {
  value       = azurerm_linux_virtual_machine.vm.id
  description = "ID of the Virtual Machine"
}

output "vm_ip" {
  value       = azurerm_linux_virtual_machine.vm.public_ip_address
  description = "Public IP address of the VM"
}

output "nic_id" {
  value       = azurerm_network_interface.nic.id
  description = "ID of the Network Interface"
}
