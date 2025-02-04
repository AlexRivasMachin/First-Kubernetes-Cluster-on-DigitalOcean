resource "digitalocean_kubernetes_cluster" "k8s_cluster" {
  name    = var.cluster_name
  region  = var.region
  version = "latest"
  node_pool {
    name       = "default-pool"
    size       = var.node_size
    node_count = var.node_count
  }
}