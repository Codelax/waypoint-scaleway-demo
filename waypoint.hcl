project = "waypoint-scaleway-demo"

app "web" {
  build {
    use "docker" {}

    registry {
      use "docker" {
        image = "rg.fr-par.scw.cloud/funcscwtfnsfriendlypoincarebz3oqsvh/web"
        tag   = "latest"
      }
    }
  }

  deploy {
    use "scaleway-container" {
      port = 1337
      namespace = "bf5ff253-0e0a-4318-9e24-8b7258716a2d"
      region = "fr-par"
      env = {}
    }
  }
}
