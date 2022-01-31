resource "local_file" "kubernetes_config" {
  content  = azurerm_kubernetes_cluster.myclusteraks.kube_config_raw
  filename = "kubeconfig.yaml"
}