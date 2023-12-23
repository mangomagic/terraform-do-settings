locals {
  service  = split("-", var.workspace)[0]
  env      = split("-", var.workspace)[1]
  settings = lookup(var.environments, local.env)
}
