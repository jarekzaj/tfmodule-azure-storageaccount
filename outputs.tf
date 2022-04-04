output storageaccount_connection_string {
    value = azurerm_storage_account.storageaccount.primary_connection_string
    sensitive = true
} 