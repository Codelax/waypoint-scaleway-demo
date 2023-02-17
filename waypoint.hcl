project = "waypoint-scaleway-demo"

app "web" {
  build {
    use "docker" {}

    registry {
      use "docker" {
        image = "rg.fr-par.scw.cloud/funcscwtfnsboldhaslettyqarhhbt/web"
        tag   = "latest"
      }
    }
  }

  deploy {
    use "scaleway-container" {
      port = 1337
      namespace = "942eb920-55dd-4de1-aa06-29f644e10a20"
      region = "fr-par"
    }
  }
}
