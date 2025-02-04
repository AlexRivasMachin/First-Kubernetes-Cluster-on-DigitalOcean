variable "do_token" {
  description = "Your DigitalOcean API token"
  type        = string
}

variable "cluster_name" {
  description = "The name of the Kubernetes cluster"
  type        = string
  default     = "my-k8s-cluster"
}

variable "region" {
  description = "The region where the Kubernetes cluster will be created"
  type        = string
  default     = "fra1"
}

variable "node_size" {
  description = "The size of the nodes in the Kubernetes cluster"
  type        = string
  default     = "s-2vcpu-2gb"
}

variable "node_count" {
  description = "The number of nodes in the Kubernetes cluster"
  type        = number
  default     = 2
}