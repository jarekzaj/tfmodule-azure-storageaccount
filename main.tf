resource "azurerm_storage_account" "storageaccount" {
  name                          = var.name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  tags                          = var.tags
  access_tier                   = var.access_tier
  account_replication_type      = var.replication_type
  account_tier                  = local.account_kind
  account_kind                  = var.storage_kind
  min_tls_version               = "TLS1_2"
  enable_https_traffic_only     = true
}