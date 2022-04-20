locals {
  identifier        = var.use_identifier_prefix ? null : var.identifier
  identifier_prefix = var.use_identifier_prefix ? format("%s-", var.identifier) : null
}
