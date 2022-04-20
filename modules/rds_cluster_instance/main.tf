resource "aws_rds_cluster_instance" "this" {
  count = var.number_of_instances

  identifier                            = local.identifier
  identifier_prefix                     = local.identifier_prefix
  cluster_identifier                    = var.cluster_identifier
  engine                                = var.engine
  engine_version                        = var.engine_version
  instance_class                        = var.instance_class
  publicly_accessible                   = var.publicly_accessible
  db_subnet_group_name                  = var.db_subnet_group_name
  db_parameter_group_name               = var.db_parameter_group_name
  apply_immediately                     = var.apply_immediately
  monitoring_role_arn                   = var.monitoring_role_arn
  monitoring_interval                   = var.monitoring_interval
  promotion_tier                        = var.promotion_tier
  availability_zone                     = var.availability_zone
  preferred_backup_window               = var.preferred_backup_window
  preferred_maintenance_window          = var.preferred_maintenance_window
  auto_minor_version_upgrade            = var.auto_minor_version_upgrade
  performance_insights_enabled          = var.performance_insights_enabled
  performance_insights_kms_key_id       = var.performance_insights_kms_key_id
  performance_insights_retention_period = var.performance_insights_retention_period
  copy_tags_to_snapshot                 = var.copy_tags_to_snapshot
  ca_cert_identifier                    = var.ca_cert_identifier

  timeouts {
    create = lookup(var.instance_timeouts, "create", null)
    update = lookup(var.instance_timeouts, "update", null)
    delete = lookup(var.instance_timeouts, "delete", null)
  }

  tags = merge({ "Name" = var.identifier }, var.tags)
}
