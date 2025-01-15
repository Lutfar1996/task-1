output "cluster_id" {
  description = "The ID of the Kubernetes cluster"
  value       = digitalocean_kubernetes_cluster.my_cluster.id
}

output "droplet_ip" {
  description = "The public IP address of the created droplet"
  value       = digitalocean_droplet.example.ipv4_address
}
