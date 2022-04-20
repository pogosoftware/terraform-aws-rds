locals {
  name        = var.use_name_prefix ? null : var.name
  name_prefix = var.use_name_prefix ? format("%s-", var.name) : null
}
