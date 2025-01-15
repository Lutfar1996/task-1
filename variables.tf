variable "dos_api_token" {
  description = "DigitalOcean API token"
  type        = string
}


variable "k8s_node_count" {
  description = "Number of nodes in the Kubernetes cluster"
  type        = number
  default     = 2
}

variable "k8s_node_size" {
  description = "Size of each node in the Kubernetes cluster"
  type        = string
  default     = "s-2vcpu-4gb"  # Example size
}

variable "droplet_size" {
  description = "Size of the Droplet"
  type        = string
  default     = "s-1vcpu-1gb"  # Example size
}
