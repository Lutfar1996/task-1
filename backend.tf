terraform {
  backend "s3" {
    bucket         = "flarie"
    key            = "terraform/state/terraform.tfstate"
    region         = "nyc3"
    acl            = "private"
    endpoint       = "https://nyc3.digitaloceanspaces.com"
  }
}
