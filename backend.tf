terraform {
  backend "s3" {
    bucket         = "flarie"  # The name of your DigitalOcean Spaces bucket
    key            = "terraform/state/terraform.tfstate"  # Path where the state file will be stored
    # region         = "nyc3"  # DigitalOcean Spaces region (NYC3)
    region         =  "ap-southeast-1"
    endpoint       = "nyc3.digitaloceanspaces.com"  # Endpoint for DigitalOcean Spaces API
   acl            = "private"  # Set to private for security
  }
}
