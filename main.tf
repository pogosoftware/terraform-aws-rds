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

  use_cluster_identifier_prefix       = var.rds_cluster_use_cluster_identifier_prefix
  cluster_identifier                  = var.rds_cluster_cluster_identifier
  master_password                     = var.rds_cluster_master_password
  master_username                     = var.rds_cluster_master_username
  allocated_storage                   = var.rds_cluster_allocated_storage
  allow_major_version_upgrade         = var.rds_cluster_allow_major_version_upgrade
  apply_immediately                   = var.rds_cluster_apply_immediately
  availability_zones                  = var.rds_cluster_availability_zones
  backtrack_window                    = var.rds_cluster_backtrack_window
  backup_retention_period             = var.rds_cluster_backup_retention_period
  cluster_timeouts                    = var.rds_cluster_cluster_timeouts
  copy_tags_to_snapshot               = var.rds_cluster_copy_tags_to_snapshot
  database_name                       = var.rds_cluster_database_name
  db_cluster_parameter_group_name     = local.rds_cluster_db_cluster_parameter_group_name
  db_instance_parameter_group_name    = var.rds_cluster_db_instance_parameter_group_name
  db_subnet_group_name                = local.rds_cluster_db_subnet_group_name
  deletion_protection                 = var.rds_cluster_deletion_protection
  enable_http_endpoint                = var.rds_cluster_enable_http_endpoint
  enabled_cloudwatch_logs_exports     = var.rds_cluster_enabled_cloudwatch_logs_exports
  engine                              = var.rds_cluster_engine
  engine_mode                         = var.rds_cluster_engine_mode
  engine_version                      = var.rds_cluster_engine_version
  db_cluster_instance_class           = var.rds_cluster_db_cluster_instance_class
  final_snapshot_identifier           = var.rds_cluster_final_snapshot_identifier
  global_cluster_identifier           = var.rds_cluster_global_cluster_identifier
  enable_global_write_forwarding      = var.rds_cluster_enable_global_write_forwarding
  iam_database_authentication_enabled = var.rds_cluster_iam_database_authentication_enabled
  iam_roles                           = var.rds_cluster_iam_roles
  kms_key_id                          = var.rds_cluster_kms_key_id
  port                                = var.rds_cluster_port
  preferred_backup_window             = var.rds_cluster_preferred_backup_window
  preferred_maintenance_window        = var.rds_cluster_preferred_maintenance_window
  replication_source_identifier       = var.rds_cluster_replication_source_identifier
  restore_to_point_in_time            = var.rds_cluster_restore_to_point_in_time
  s3_import                           = var.rds_cluster_s3_import
  scaling_configuration               = var.rds_cluster_scaling_configuration
  skip_final_snapshot                 = var.rds_cluster_skip_final_snapshot
  snapshot_identifier                 = var.rds_cluster_snapshot_identifier
  source_region                       = var.rds_cluster_source_region
  storage_type                        = var.rds_cluster_storage_type
  iops                                = var.rds_cluster_iops
  storage_encrypted                   = var.rds_cluster_storage_encrypted
  vpc_security_group_ids              = var.rds_cluster_vpc_security_group_ids

  tags = var.rds_cluster_tags
}

module "rds_cluster_instance" {
  source = "./modules/rds_cluster_instance"

  create              = var.create_rds_cluster_instance
  number_of_instances = var.rds_cluster_number_of_instances

  use_identifier_prefix = var.rds_cluster_instance_use_identifier_prefix
  identifier            = var.rds_cluster_instance_identifier
  cluster_identifier    = local.rds_cluster_instance_cluster_identifier
  instance_class        = var.rds_cluster_instance_class

  engine                                = var.rds_cluster_instance_engine
  engine_version                        = var.rds_cluster_instance_engine_version
  publicly_accessible                   = var.rds_cluster_instance_publicly_accessible
  db_subnet_group_name                  = var.rds_cluster_instance_db_subnet_group_name    ###
  db_parameter_group_name               = var.rds_cluster_instance_db_parameter_group_name ###
  apply_immediately                     = var.rds_cluster_instance_apply_immediately
  monitoring_role_arn                   = var.rds_cluster_instance_monitoring_role_arn
  monitoring_interval                   = var.rds_cluster_instance_monitoring_interval
  promotion_tier                        = var.rds_cluster_instance_promotion_tier
  availability_zone                     = var.rds_cluster_instance_availability_zone
  preferred_backup_window               = var.rds_cluster_instance_preferred_backup_window
  preferred_maintenance_window          = var.rds_cluster_instance_preferred_maintenance_window
  auto_minor_version_upgrade            = var.rds_cluster_instance_auto_minor_version_upgrade
  performance_insights_enabled          = var.rds_cluster_instance_performance_insights_enabled
  performance_insights_kms_key_id       = var.rds_cluster_instance_performance_insights_kms_key_id
  performance_insights_retention_period = var.rds_cluster_instance_performance_insights_retention_period
  copy_tags_to_snapshot                 = var.rds_cluster_instance_copy_tags_to_snapshot
  ca_cert_identifier                    = var.rds_cluster_instance_ca_cert_identifier
  instance_timeouts                     = var.rds_cluster_instance_instance_timeouts

  tags = var.rds_cluster_instance_tags
}
