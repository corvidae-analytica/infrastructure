import {
    to = azurerm_resource_group.default
    id = "/subscriptions/aa379ed2-15f9-449a-94bf-c88194b80ecc/resourceGroups/default"
}

import {
    to = azurerm_storage_account.quietzero
    id ="subscriptions/aa379ed2-15f9-449a-94bf-c88194b80ecc/resourceGroups/default/providers/Microsoft.Storage/storageAccounts/quietzero"
}

import {
    to = azurerm_storage_container.tfstate
    id = "https://quietzero.blob.core.windows.net/tfstate"
}

# import {
#     to = azurerm_kubernetes_cluster.aks
#     id = "subscriptions/aa379ed2-15f9-449a-94bf-c88194b80ecc/resourceGroups/default/providers/Microsoft.ContainerService/managedClusters/aks"
# }