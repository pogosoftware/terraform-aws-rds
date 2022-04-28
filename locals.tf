locals {
  db_parameter_group_name         = var.create_db_parameter_group ? module.db_parameter_group.id : var.db_parameter_group_name
  db_cluster_parameter_group_name = var.create_rds_cluster_parameter_group ? module.rds_cluster_parameter_group.id : var.db_cluster_parameter_group_name
  db_subnet_group_name            = var.create_db_subnet_group ? module.db_subnet_group.id : var.db_subnet_group_name
}
