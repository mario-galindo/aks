resource "local_file" "kubernetes_config" {
  content  = azurerm_kubernetes_cluster.example.kube_config_raw
  filename = "kubeconfig.yaml"
}