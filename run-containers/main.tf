
provider "docker" {
  host = "npipe:////./pipe/docker_engine"  # Use this for Windows

  # If using Linux/macOS, replace with:
  # host = "unix:///var/run/docker.sock"
}

# Pull a Docker image
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

# Create a Docker container
resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = var.instances_nginx[count.index].name
  count = length(var.instances_nginx)
  ports {
    internal = 80
    external = var.instances_nginx[count.index].port
  }
}

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.22.0"  # Specify the version you want to use
    }
  }
}