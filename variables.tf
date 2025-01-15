variable "digitalocean_token" {
  description = "The DigitalOcean API Token"
  type        = string
}

variable "ssh_key_id" {
  description = "The SSH key ID to be used for Droplet creation"
  type        = string
}
