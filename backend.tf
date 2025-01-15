terraform {
  backend "s3" {
    bucket         = "flarie"  # The name of your DigitalOcean Spaces bucket
    key            = "terraform/state/terraform.tfstate"  # Path where the state file will be stored
    region         = "nyc3"  # DigitalOcean Spaces region (NYC3)
    endpoint       = "https://nyc3.digitaloceanspaces.com"  # Endpoint for DigitalOcean Spaces API
    access_key     = var.dos_access_key  # Access key stored in variables
    secret_key     = var.dos_secret_key  # Secret key stored in variables
    acl            = "private"  # Set to private for security
  }
}
