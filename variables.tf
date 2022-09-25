#########################################################
## Variable Declarations
#########################################################

#Shared
variable "location" {
  type        = string
  description = "Set this to the location the SQL Server instance will be created."
  default     = "US East"
}
variable "tenant_id" {
  type = string
  description = "Set this to the Azure tenant id."
}


# Tags
variable "tags" {
  type        = map
  description = "Set this to the mapping of tags to assign to the resource."
}

#Resource Group
variable "resource_group_name" {
  type        = string
  description = "Set this to the name of the Resource Group in which the SQL Server instance and related resources will be created."
}

#KeyVault
variable "keyvault_name" {
    type = string
  description = "Set this to the name of the Azure Key Vault created to store the SQL Server instance secrets."
}
variable "keyvault_sku" {
    type = string
    description = "Set this to the name of the SKU used for this Key Vault. Valid options: standard and premium."
}
variable "keyvault_disk_enc_enabled" {
    type = bool
    description = "Set this Boolean flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys."
}