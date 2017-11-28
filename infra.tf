// s-1vcpu-3gb 512mb

resource "digitalocean_droplet" "neo4j" {
  ssh_keys = ["${var.ssh_keys}"]
  name = "neo4j"
  image = "ubuntu-17-04-x64"
  region = "sfo2"
  size   = "512mb"
  private_networking = true
  resize_disk = false
  provisioner "remote-exec" {
    scripts = [
      "prov-java.sh",
      "prov-neo4j.sh"
    ]
  }
}

output "neo4j" {
  value = "root@${digitalocean_droplet.neo4j.ipv4_address}"
}

