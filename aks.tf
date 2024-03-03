resource "azurerm_kubernetes_cluster" "aks" {
  automatic_channel_upgrade           = null
  azure_policy_enabled                = null
  custom_ca_trust_certificates_base64 = []
  disk_encryption_set_id              = null
  dns_prefix                          = "aks-default-aa379e"
  dns_prefix_private_cluster          = null
  edge_zone                           = null
  http_application_routing_enabled    = null
  image_cleaner_enabled               = null
  image_cleaner_interval_hours        = null
  kubernetes_version                  = "1.27"
  local_account_disabled              = false
  location                            = "westus2"
  name                                = "aks"
  node_os_channel_upgrade             = null
  node_resource_group                 = "MC_default_aks_westus2"
  oidc_issuer_enabled                 = false
  open_service_mesh_enabled           = null
  private_cluster_enabled             = false
  private_cluster_public_fqdn_enabled = false
  private_dns_zone_id                 = null
  resource_group_name                 = "default"
  role_based_access_control_enabled   = true
  run_command_enabled                 = true
  sku_tier                            = "Free"
  support_plan                        = "KubernetesOfficial"
  tags                                = {}
  workload_identity_enabled           = false
  default_node_pool {
    capacity_reservation_group_id = null
    custom_ca_trust_enabled       = false
    enable_auto_scaling           = false
    enable_host_encryption        = false
    enable_node_public_ip         = false
    fips_enabled                  = false
    gpu_instance                  = null
    host_group_id                 = null
    kubelet_disk_type             = "OS"
    max_count                     = null
    max_pods                      = 110
    message_of_the_day            = null
    min_count                     = null
    name                          = "nodepool1"
    node_count                    = 1
    node_labels                   = {}
    node_public_ip_prefix_id      = null
    only_critical_addons_enabled  = false
    orchestrator_version          = "1.27.9"
    os_disk_size_gb               = 128
    os_disk_type                  = "Managed"
    os_sku                        = "Ubuntu"
    pod_subnet_id                 = null
    proximity_placement_group_id  = null
    scale_down_mode               = "Delete"
    snapshot_id                   = null
    tags                          = {}
    temporary_name_for_rotation   = null
    type                          = "VirtualMachineScaleSets"
    ultra_ssd_enabled             = false
    vm_size                       = "Standard_B2ls_v2"
    vnet_subnet_id                = null
    workload_runtime              = null
    zones                         = []
  }
  identity {
    identity_ids = []
    type         = "SystemAssigned"
  }
  kubelet_identity {
    client_id                 = "92f22d59-86bf-40ef-9b6e-9449d83cebba"
    object_id                 = "beda6cf1-90c8-4a3a-9e1a-1e79b51fdfd1"
    user_assigned_identity_id = "/subscriptions/aa379ed2-15f9-449a-94bf-c88194b80ecc/resourceGroups/MC_default_aks_westus2/providers/Microsoft.ManagedIdentity/userAssignedIdentities/aks-agentpool"
  }
  linux_profile {
    admin_username = "azureuser"
    ssh_key {
      key_data = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCo+VypL4FLMdfOzeQCP+I9xleJLynmzjK2m+C8NUDWxdZfcaYOM50XpyfKEav5Z59AXqIFUTZ2QSJ0jHFlnTifo+F9g4VCaJpUtWn/BKg691S+cVQONJ3AZaod8Txa2Dxvw9PfqEOFt0h61/hQwxwxA5KM3bQ4FlfZXqZu3OeqgExBsynWUAKOY3i6ioG78oGMWMRYmDyWQoetxMCnXoxV1PcYfTL2we25KAFowykX7Ecl2lEQF/jq0b5AudUSINttKnbTAD+vvhAzxDrSE4+Ka40jJPKbD7Msc1SWLcmEl57ErEQakofG9Zs+wM9+Vr4F4+6oILnjV/DpdUW0OkBj"
    }
  }
  network_profile {
    dns_service_ip      = "10.0.0.10"
    ebpf_data_plane     = null
    ip_versions         = ["IPv4"]
    load_balancer_sku   = "basic"
    network_mode        = null
    network_plugin      = "kubenet"
    network_plugin_mode = null
    network_policy      = null
    outbound_type       = "loadBalancer"
    pod_cidr            = "10.244.0.0/16"
    pod_cidrs           = ["10.244.0.0/16"]
    service_cidr        = "10.0.0.0/16"
    service_cidrs       = ["10.0.0.0/16"]
  }
}
