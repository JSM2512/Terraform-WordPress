terraform {
        required_providers {
                docker = {
                        source  = "kreuzwerker/docker"
                        version = "~> 2.24.0"
                }
        }
}

provider "docker" {}


resource "docker_image" "wordpress" {
        name = "wordpress:latest"
        keep_locally = false
}


resource "docker_container" "mysql" {
        image = "mysql:latest"
        name = "mysql-container"
        ports {
                internal = 3306
                external = 3306
        }
}

resource "docker_container" "wordpress" {
        image = docker_image.wordpress.latest
        name = "wordpress-terraform-container"
        ports {
                internal = 80
                external = 80
        }
        depends_on = [
                docker_container.mysql,
                docker_image.wordpress,
        ]
}
