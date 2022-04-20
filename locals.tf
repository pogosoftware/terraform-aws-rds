locals {
  rds_cluster_db_cluster_parameter_group_name = var.create_rds_cluster_parameter_group ? module.rds_cluster_parameter_group.id : var.rds_cluster_db_cluster_parameter_group_name
  rds_cluster_db_subnet_group_name            = var.create_db_subnet_group ? module.db_subnet_group.id : var.rds_cluster_db_subnet_group_name

  rds_cluster_instance_cluster_identifier = var.create_rds_cluster ? module.rds_cluster.cluster_identifier : var.rds_cluster_instance_cluster_identifier
}
