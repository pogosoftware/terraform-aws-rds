module "db_subnet_group" {
  source = "./modules/db_subnet_group"

  create = var.create_db_subnet_group

  name            = var.db_subnet_group_name
  use_name_prefix = var.db_subnet_group_use_name_prefix
  description     = var.db_subnet_group_description
  subnet_ids      = var.db_subnet_group_subnet_ids

  tags = var.db_subnet_group_tags
}

module "db_parameter_group" {
  source = "./modules/db_parameter_group"

  create = var.create_db_parameter_group

  name            = var.db_parameter_group_name
  use_name_prefix = var.db_parameter_group_use_name_prefix
  description     = var.db_parameter_group_description
  family          = var.db_parameter_group_family
  parameters      = var.db_parameter_group_parameters

  tags = var.db_parameter_group_tags
}

module "rds_cluster_parameter_group" {
  source = "./modules/rds_cluster_parameter_group"

  create = var.create_rds_cluster_parameter_group

  name            = var.rds_cluster_parameter_group_name
  use_name_prefix = var.rds_cluster_parameter_group_use_name_prefix
  description     = var.rds_cluster_parameter_group_description
  family          = var.rds_cluster_parameter_group_family
  parameters      = var.rds_cluster_parameter_group_parameters

  tags = var.rds_cluster_parameter_group_tags
}

module "rds_cluster" {
  source = "./modules/rds_cluster"

  create = var.create_rds_cluster

  use_cluster_identifier_prefix       = var.use_cluster_identifier_prefix
  cluster_identifier                  = var.cluster_identifier
  master_password                     = var.master_password
  master_username                     = var.master_username
  allocated_storage                   = var.allocated_storage
  allow_major_version_upgrade         = var.allow_major_version_upgrade
  apply_immediately                   = var.apply_immediately
  availability_zones                  = var.availability_zones
  backtrack_window                    = var.backtrack_window
  backup_retention_period             = var.backup_retention_period
  cluster_timeouts                    = var.cluster_timeouts
  copy_tags_to_snapshot               = var.copy_tags_to_snapshot
  database_name                       = var.database_name
  db_cluster_parameter_group_name     = local.db_cluster_parameter_group_name
  db_instance_parameter_group_name    = var.db_instance_parameter_group_name
  db_subnet_group_name                = local.db_subnet_group_name
  deletion_protection                 = var.deletion_protection
  enable_http_endpoint                = var.enable_http_endpoint
  enabled_cloudwatch_logs_exports     = var.enabled_cloudwatch_logs_exports
  engine                              = var.engine
  engine_mode                         = var.engine_mode
  engine_version                      = var.engine_version
  db_cluster_instance_class           = var.db_cluster_instance_class
  final_snapshot_identifier           = var.final_snapshot_identifier
  global_cluster_identifier           = var.global_cluster_identifier
  enable_global_write_forwarding      = var.enable_global_write_forwarding
  iam_database_authentication_enabled = var.iam_database_authentication_enabled
  iam_roles                           = var.iam_roles
  kms_key_id                          = var.kms_key_id
  port                                = var.port
  preferred_backup_window             = var.preferred_backup_window
  preferred_maintenance_window        = var.preferred_maintenance_window
  replication_source_identifier       = var.replication_source_identifier
  restore_to_point_in_time            = var.restore_to_point_in_time
  s3_import                           = var.s3_import
  scaling_configuration               = var.scaling_configuration
  skip_final_snapshot                 = var.skip_final_snapshot
  snapshot_identifier                 = var.snapshot_identifier
  source_region                       = var.source_region
  storage_type                        = var.storage_type
  iops                                = var.iops
  storage_encrypted                   = var.storage_encrypted
  vpc_security_group_ids              = var.vpc_security_group_ids

  tags = var.rds_cluster_tags
}

module "rds_cluster_instance" {
  source = "./modules/rds_cluster_instance"

  for_each = var.rds_cluster_instances

  identifier            = each.key
  use_identifier_prefix = lookup(each.value, "use_identifier_prefix", true)
  cluster_identifier    = lookup(each.value, "cluster_identifier", module.rds_cluster.cluster_identifier)
  instance_class        = each.value.instance_class

  engine                                = lookup(each.value, "engine", module.rds_cluster.engine)
  engine_version                        = lookup(each.value, "engine_version", module.rds_cluster.engine_version)
  publicly_accessible                   = lookup(each.value, "publicly_accessible", false)
  db_subnet_group_name                  = lookup(each.value, "db_subnet_group_name", local.db_subnet_group_name)
  db_parameter_group_name               = lookup(each.value, "db_parameter_group_name", local.db_parameter_group_name)
  apply_immediately                     = lookup(each.value, "apply_immediately", false)
  monitoring_role_arn                   = lookup(each.value, "monitoring_role_arn", null)
  monitoring_interval                   = lookup(each.value, "monitoring_interval", 0)
  promotion_tier                        = lookup(each.value, "promotion_tier", index(keys(var.rds_cluster_instances), each.key) + 1)
  availability_zone                     = lookup(each.value, "availability_zone", null)
  preferred_backup_window               = lookup(each.value, "preferred_backup_window", null)
  preferred_maintenance_window          = lookup(each.value, "preferred_maintenance_window", null)
  auto_minor_version_upgrade            = lookup(each.value, "auto_minor_version_upgrade", true)
  performance_insights_enabled          = lookup(each.value, "performance_insights_enabled", null)
  performance_insights_kms_key_id       = lookup(each.value, "performance_insights_kms_key_id", null)
  performance_insights_retention_period = lookup(each.value, "performance_insights_retention_period", 7)
  copy_tags_to_snapshot                 = lookup(each.value, "copy_tags_to_snapshot", false)
  ca_cert_identifier                    = lookup(each.value, "ca_cert_identifier", null)
  instance_timeouts                     = lookup(each.value, "instance_timeouts", {})

  tags = var.rds_cluster_instance_tags
}
