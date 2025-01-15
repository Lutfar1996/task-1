provider "digitalocean" {
  token = var.digitalocean_token  # Your DigitalOcean API token
}

resource "digitalocean_kubernetes_cluster" "cluster" {
  name                = "my-k8s-cluster"
  region              = "nyc3"  # Replace with your desired region
  version             = "latest"
  node_pool {
    name               = "default-node-pool"
    size               = "s-1vcpu-2gb"  # Droplet size for your worker nodes
    node_count         = 2  # Number of nodes
    auto_scale         = false
    min_nodes          = 1
    max_nodes          = 3
  }
}

resource "digitalocean_droplet" "worker_node" {
  count              = 2  # Number of worker nodes
  name               = "worker-node-${count.index}"
  region             = "nyc3"  # Replace with your region
  size               = "s-1vcpu-2gb"  # Droplet size for worker nodes
  image              = "ubuntu-20-04-x64"  # Ubuntu image for the nodes
  ssh_keys           = [var.ssh_key_id]  # Ensure you have your SSH key configured
  tags               = ["k8s", "worker"]
}

output "kubernetes_cluster_name" {
  value = digitalocean_kubernetes_cluster.cluster.name
}

output "kubernetes_cluster_endpoint" {
  value = digitalocean_kubernetes_cluster.cluster.endpoint
}

output "kubernetes_cluster_token" {
  value = digitalocean_kubernetes_cluster.cluster.kube_config.0.token
}

output "worker_nodes" {
  value = digitalocean_droplet.worker_node[*].name
}
