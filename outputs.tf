output "environments" {
  description = "Environment settings"
  value       = var.environments
}

output "settings" {
  value = local.settings
}

output "do_project" {
  description = "Name of Digital Ocean project for environment"
  value       = lookup(local.settings, "do_project")
}

output "vpcs" {
  value = lookup(local.settings, "vpcs")
}

output "service" {
  value = local.service
}

# The environment short name e.g. dev, stage, prod
output "env" {
  value = local.env
}

output "droplet_sizes" {
  value = {
    nano      = "s-1vcpu-1gb"
    micro     = "s-2vcpu-2gb"
    small     = "s-2vcpu-4gb"
    medium    = "s-4vcpu-8gb"
    large     = "s-6vcpu-16gb"
    x-large   = "s-8vcpu-32gb"
    xx-large  = "s-16vcpu-64gb"
    xxx-large = "s-24vcpu-128gb"
    maximum   = "s-32vcpu-192gb"
  }
}
