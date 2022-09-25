resource "azurerm_key_vault" "keyvault" {
  location                    = var.location
  resource_group_name         = var.resource_group_name
  tenant_id                   = var.tenant_id
  name                        = var.keyvault_name
  sku_name                    = var.keyvault_sku
  enabled_for_disk_encryption = var.keyvault_disk_enc_enabled
  tags                        = var.tags
}