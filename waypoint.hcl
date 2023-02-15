project = "waypoint-scaleway-demo"

app "web" {
  build {
    use "docker" {}

    registry {
      use "docker" {
        image = "rg.fr-par.scw.cloud/waypoint-demo/web"
        tag   = "latest"
      }
    }
  }

  deploy {
    use "scaleway-container" {
      port = 1337
      namespace = "6c36b248-0d14-423a-9761-00c0a0be7a73"
      region = "fr-par"
    }
  }
}
