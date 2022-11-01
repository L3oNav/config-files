resource "digitalocean_droplet" "node" {
  image = "ubuntu-22-04-x64"
  name = "node-01"
  region = "sfo3"
  size = "s-1vcpu-1gb" 
  ssh_keys = ["${digitalocean_ssh_key.l3onav.fingerprint}"] 
  user_data = "${file("userdata.yml")}" 
} 
