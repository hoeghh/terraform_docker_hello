# Configure the Docker provider
provider "docker" {
    alias = "praqma"
    host = "tcp://127.0.0.1:2375/"
}

# Create a container
resource "docker_container" "foo" {
    image = "${docker_image.jenkins.latest}"
    name = "foo"
    ports {
        internal = "8080"
        external = "80"
    }
}

resource "docker_image" "jenkins" {
    name = "docker.io/jenkins:latest"
}
