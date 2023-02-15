project = "waypoint-scaleway-demo"

app "web" {
  build {
    use "docker" {}

    registry {
      use "docker" {
        image = "{registry-endpoint}/web"
        tag   = "latest"
      }
    }
  }

  deploy {
    use "scaleway-container" {
      port = 1337
      namespace = "{container-namespace}"
      region = "fr-par"
    }
  }
}
