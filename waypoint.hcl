project = "waypoint-scaleway-demo"

app "web" {
  build {
    use "docker" {}

    registry {
      use "docker" {
        image = "rg.fr-par.scw.cloud/funcscwtfnsquirkykeplerxq30qhxw/web"
        tag   = "latest"
      }
    }
  }

  deploy {
    use "scaleway-container" {
      port = 1337
      namespace = "de0076bb-8745-4815-99de-d6d692f5119d"
      region = "fr-par"
    }
  }
}
