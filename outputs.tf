output "kubeconfig" {
    description = "Kubeconfig file for accessing the Kubernetes cluster"
    value = digitalocean_kubernetes_cluster.k8s_cluster.kube_config.0.raw_config
    sensitive = true
}

output "cluster_name" {
    description = "The name of the Kubernetes cluster"
    value = digitalocean_kubernetes_cluster.k8s_cluster.name
}

output "region" {
    description = "The region where the Kubernetes cluster is created"
    value = digitalocean_kubernetes_cluster.k8s_cluster.region
}

output "node_size" {
    description = "The size of the nodes in the Kubernetes cluster"
    value = digitalocean_kubernetes_cluster.k8s_cluster.node_pool.0.size
}

output "node_count" {
    description = "The number of nodes in the Kubernetes cluster"
    value = digitalocean_kubernetes_cluster.k8s_cluster.node_pool.0.node_count
}

output "cluster_id" {
    description = "The ID of the Kubernetes cluster"
    value = digitalocean_kubernetes_cluster.k8s_cluster.id
}