variable "environments" {
  description = "Settings for different DO staging environments"
  type        = map(any)
  default = {
    dev = {
      do_project = "Development"
      vpcs = {
        vpc-dev-sgp1 = {
          region   = "sgp1"
          ip_range = "10.10.0.0/16"
        },
        vpc-dev-nyc1 = {
          region   = "nyc1"
          ip_range = "10.11.0.0/16"
        },
        vpc-dev-nyc2 = {
          region   = "nyc2"
          ip_range = "10.12.0.0/16"
        },
        vpc-dev-lon1 = {
          region   = "lon1"
          ip_range = "10.13.0.0/16"
        }
      }
    }
    stage = {
      do_project = "Staging"
      vpcs = {
        vpc-stage-sgp1 = {
          region   = "sgp1"
          ip_range = "10.20.0.0/16"
        }
        vpc-stage-nyc1 = {
          region   = "nyc1"
          ip_range = "10.21.0.0/16"
        },
        vpc-stage-nyc2 = {
          region   = "nyc2"
          ip_range = "10.22.0.0/16"
        },
        vpc-stage-lon1 = {
          region   = "lon1"
          ip_range = "10.23.0.0/16"
        }
      }
    }
    prod = {
      do_project = "Production"
      vpcs = {
        vpc-prod-sgp1 = {
          region   = "sgp1"
          ip_range = "10.30.0.0/16"
        },
        vpc-prod-nyc1 = {
          region   = "nyc1"
          ip_range = "10.31.0.0/16"
        },
        vpc-prod-nyc2 = {
          region   = "nyc2"
          ip_range = "10.32.0.0/16"
        },
        vpc-prod-lon1 = {
          region   = "lon1"
          ip_range = "10.33.0.0/16"
        }
      }
    }
  }
}

variable "workspace" {
  type    = string
  default = "playground-dev"
}
