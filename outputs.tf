##########################################################################
### db_subnet_group
##########################################################################
output "db_subnet_group_arn" {
  description = "The ARN of the db subnet group"
  value       = try(module.db_subnet_group.this[0].arn, "")
}

output "db_subnet_group_id" {
  description = "The ID of the db subnet group"
  value       = try(module.db_subnet_group.this[0].id2, "")
}

output "db_subnet_group_name" {
  description = "The name of the db subnet group"
  value       = try(module.db_subnet_group.this[0].name, var.db_subnet_group_name)
}

output "db_subnet_group_subnet_ids" {
  description = "The subnets IDs of the db subnet group"
  value       = try(module.db_subnet_group.this[0].subnet_ids, "")
}

##########################################################################
### db_parameter_group
##########################################################################
output "db_parameter_group_id" {
  description = "The ID of the db parameter group"
  value       = try(module.db_parameter_group.this[0].id, "")
}

output "db_parameter_group_arn" {
  description = "The ARN of the db parameter group"
  value       = try(module.db_parameter_group.this[0].arn, "")
}

output "db_parameter_group_name" {
  description = "The name of the db parameter group"
  value       = try(module.db_parameter_group.this[0].name, var.db_parameter_group_name)
}

output "db_parameter_group_family" {
  description = "The family of the db parameter group"
  value       = try(module.db_parameter_group.this[0].family, "")
}

output "db_parameter_group_parameters" {
  description = "The parameters of the db parameter group"
  value       = try(module.db_parameter_group.this[0].parameters, "")
}

##########################################################################
### rds_cluster_parameter_group
##########################################################################
output "rds_cluster_parameter_group_id" {
  description = "The ID of the db cluster parameter group"
  value       = try(module.rds_cluster_parameter_group.this[0].id, "")
}

output "rds_cluster_parameter_group_arn" {
  description = "The ARN of the db cluster parameter group"
  value       = try(module.rds_cluster_parameter_group.this[0].arn, "")
}

output "rds_cluster_parameter_group_name" {
  description = "The name of the db cluster parameter group"
  value       = try(module.rds_cluster_parameter_group.this[0].name, var.rds_cluster_parameter_group_name)
}

output "rds_cluster_parameter_group_family" {
  description = "The family of the db cluster parameter group"
  value       = try(module.rds_cluster_parameter_group.this[0].family, "")
}

output "rds_cluster_parameter_group_parameters" {
  description = "The parameters of the db cluster parameter group"
  value       = try(module.rds_cluster_parameter_group.this[0].parameters, "")
}

##########################################################################
### rds_cluster
##########################################################################
output "arn" {
  description = "Amazon Resource Name (ARN) of cluster"
  value       = try(module.rds_cluster.this[0].arn, "")
}

output "id" {
  description = "The RDS Cluster Identifier"
  value       = try(module.rds_cluster.this[0].id, "")
}

output "cluster_identifier" {
  description = "The RDS Cluster Identifier"
  value       = try(module.rds_cluster.this[0].cluster_identifier, "")
}

output "cluster_resource_id" {
  description = "The RDS Cluster Resource ID"
  value       = try(module.rds_cluster.this[0].cluster_resource_id, "")
}

output "cluster_members" {
  description = "List of RDS Instances that are a part of this cluster"
  value       = try(module.rds_cluster.this[0].cluster_members, "")
}

output "availability_zones" {
  description = "The availability zone of the instance"
  value       = try(module.rds_cluster.this[0].availability_zones, "")
}

output "backup_retention_period" {
  description = "The backup retention period"
  value       = try(module.rds_cluster.this[0].backup_retention_period, "")
}

output "preferred_backup_window" {
  description = "The daily time range during which the backups happen"
  value       = try(module.rds_cluster.this[0].preferred_backup_window, "")
}

output "preferred_maintenance_window" {
  description = "The maintenance window"
  value       = try(module.rds_cluster.this[0].preferred_maintenance_window, "")
}

output "endpoint" {
  description = "The DNS address of the RDS instance"
  value       = try(module.rds_cluster.this[0].endpoint, "")
}

output "reader_endpoint" {
  description = "A read-only endpoint for the Aurora cluster, automatically load-balanced across replicas"
  value       = try(module.rds_cluster.this[0].reader_endpoint, "")
}

output "engine" {
  description = "The database engine"
  value       = try(module.rds_cluster.this[0].engine, "")
}

output "engine_version" {
  description = "The running version of the database"
  value       = try(module.rds_cluster.this[0].engine_version, "")
}

output "engine_version_actual" {
  description = "The running version of the database"
  value       = try(module.rds_cluster.this[0].engine_version_actual, "")
}

output "database_name" {
  description = "The database name"
  value       = try(module.rds_cluster.this[0].database_name, "")
}

output "port" {
  description = "The database port"
  value       = try(module.rds_cluster.this[0].port, "")
}

output "master_username" {
  description = "The master username for the database"
  value       = try(module.rds_cluster.this[0].master_username, "")
}

output "storage_encrypted" {
  description = "Specifies whether the DB cluster is encrypted"
  value       = try(module.rds_cluster.this[0].storage_encrypted, "")
}

output "replication_source_identifier" {
  description = "ARN of the source DB cluster or DB instance if this DB cluster is created as a Read Replica"
  value       = try(module.rds_cluster.this[0].replication_source_identifier, "")
}

output "hosted_zone_id" {
  description = "The Route53 Hosted Zone ID of the endpoint"
  value       = try(module.rds_cluster.this[0].hosted_zone_id, "")
}

##########################################################################
### rds_cluster_instance
##########################################################################
output "rds_cluster_instances" {
  description = "The list of the rds cluster"
  value       = try(module.rds_cluster_instance.*.this, "")
}
