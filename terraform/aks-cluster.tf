# aks-cluster.tf
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "default" {
  name     = "terraform-aks-rg"
  location = "West US"
}

resource "azurerm_kubernetes_cluster" "default" {
  name                = "terraform-aks-cluster"
  location            = azurerm_resource_group.default.location
  resource_group_name = azurerm_resource_group.default.name
  dns_prefix          = "terraform-aks"

  default_node_pool {
    name            = "default"
    node_count      = 2
    vm_size         = "Standard_DS2_v2"
    os_disk_size_gb = 30
  }

  identity {
    type = "SystemAssigned"
  }

  role_based_access_control_enabled = true

  tags = {
    environment = "Development"
  }
}
