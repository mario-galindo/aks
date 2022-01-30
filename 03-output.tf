output "client_certificate" {
  value = azurerm_kubernetes_cluster.example.kube_config.0.client_certificate
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.example.kube_config_raw

  sensitive = false
}

resource "local_file" "kubernetes_config" {
  content  = azurerm_kubernetes_cluster.example.kube_config_raw
  filename = "kubeconfig.yaml"
}