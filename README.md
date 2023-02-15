This demo will guide you testing waypoint on scaleway

## Requirements

- `terraform`
- `waypoint`
- `waypoint-scaleway-plugin`

## Usage

- `terraform apply` Create your kubernetes cluster
- `./setup.sh` Install waypoint server and complete the `waypoint.hcl` with your container namespace informations
- `waypoint ui -authenticate` Connect to waypoint ui
- `waypoint init` Init waypoint project
- `waypoint up` Build and deploy your app on scaleway's containers

