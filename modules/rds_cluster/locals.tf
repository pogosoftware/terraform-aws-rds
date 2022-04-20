locals {
  cluster_identifier        = var.use_cluster_identifier_prefix ? null : var.cluster_identifier
  cluster_identifier_prefix = var.use_cluster_identifier_prefix ? format("%s-", var.cluster_identifier) : null

  is_serverless = var.engine_mode == "serverless"
}
