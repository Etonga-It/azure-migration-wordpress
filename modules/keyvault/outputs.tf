output "key_vault_id" {
  description = "ID of the keyvault."
  value       = azurerm_key_vault.this.id
}

output "keyvault_name" {
  description = "name of the keyvault."
  value       = azurerm_key_vault.this.id
}
