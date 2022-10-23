terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}
 
variable "digitalocean_token" {}

# configure digital ocean provider
provider "digitalocean" {
  token = "${var.digitalocean_token}"
} 
 
resource "digitalocean_ssh_key" "l3onav" {
  name = "l3onav" 
  public_key = "${file("id_rsa.pub")}"
}
