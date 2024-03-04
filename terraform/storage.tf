resource "azurerm_storage_account" "quietzero" {
  access_tier                       = "Hot"
  account_kind                      = "StorageV2"
  account_replication_type          = "LRS"
  account_tier                      = "Standard"
  allow_nested_items_to_be_public   = false
  allowed_copy_scope                = null
  cross_tenant_replication_enabled  = false
  default_to_oauth_authentication   = false
  edge_zone                         = null
  enable_https_traffic_only         = true
  infrastructure_encryption_enabled = false
  is_hns_enabled                    = false
  large_file_share_enabled          = null
  local_user_enabled                = true
  location                          = "westus2"
  min_tls_version                   = "TLS1_0"
  name                              = "quietzero"
  nfsv3_enabled                     = false
  public_network_access_enabled     = true
  queue_encryption_key_type         = "Service"
  resource_group_name               = "default"
  sftp_enabled                      = false
  shared_access_key_enabled         = true
  table_encryption_key_type         = "Service"
  tags                              = {}
  blob_properties {
    change_feed_enabled           = false
    # change_feed_retention_in_days = 0
    default_service_version       = null
    last_access_time_enabled      = false
    versioning_enabled            = false
  }
  network_rules {
    bypass                     = ["AzureServices"]
    default_action             = "Allow"
    ip_rules                   = []
    virtual_network_subnet_ids = []
  }
  queue_properties {
    hour_metrics {
      enabled               = true
      include_apis          = true
      retention_policy_days = 7
      version               = "1.0"
    }
    logging {
      delete                = false
      read                  = false
      # retention_policy_days = 0
      version               = "1.0"
      write                 = false
    }
    minute_metrics {
      enabled               = false
      include_apis          = false
      # retention_policy_days = 0
      version               = "1.0"
    }
  }
  share_properties {
    retention_policy {
      days = 7
    }
  }
}

resource "azurerm_storage_container" "tfstate" {
  container_access_type = "private"
  metadata              = {}
  name                  = "tfstate"
  storage_account_name  = "quietzero"
}