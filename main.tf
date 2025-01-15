resource "digitalocean_kubernetes_cluster" "my_cluster" {
  name    = "my-k8s-cluster"
  region  = "nyc3"
  version = "latest"
  
  node_pool {
    name       = "default-node-pool"
    size       = var.k8s_node_size  # Node size from variables
    node_count = var.k8s_node_count  # Node count from variables
  }
}

resource "digitalocean_droplet" "example" {
  name   = "example-droplet"
  region = "nyc3"
  size   = var.droplet_size  # Droplet size from variables
  image  = "ubuntu-20-04-x64"  # Base Ubuntu image
}

output "cluster_id" {
  value = digitalocean_kubernetes_cluster.my_cluster.id
}

output "droplet_ip" {
  value = digitalocean_droplet.example.ipv4_address
}
