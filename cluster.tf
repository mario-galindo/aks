resource "azurerm_kubernetes_cluster" "myclusteraks" {
  name                = "mycluster-aks"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  node_resource_group = concat(azurerm_resource_group.rg.name,"-","ancillary")
  dns_prefix          = "myclusteraks"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}