output "arn" {
  description = "Amazon Resource Name (ARN) of cluster"
  value       = try(aws_rds_cluster.this[0].arn, "")
}

output "id" {
  description = "The RDS Cluster Identifier"
  value       = try(aws_rds_cluster.this[0].id, "")
}

output "cluster_identifier" {
  description = "The RDS Cluster Identifier"
  value       = try(aws_rds_cluster.this[0].cluster_identifier, "")
}

output "cluster_resource_id" {
  description = "The RDS Cluster Resource ID"
  value       = try(aws_rds_cluster.this[0].cluster_resource_id, "")
}

output "cluster_members" {
  description = "List of RDS Instances that are a part of this cluster"
  value       = try(aws_rds_cluster.this[0].cluster_members, "")
}

output "availability_zones" {
  description = "The availability zone of the instance"
  value       = try(aws_rds_cluster.this[0].availability_zones, "")
}

output "backup_retention_period" {
  description = "The backup retention period"
  value       = try(aws_rds_cluster.this[0].backup_retention_period, "")
}

output "preferred_backup_window" {
  description = "The daily time range during which the backups happen"
  value       = try(aws_rds_cluster.this[0].preferred_backup_window, "")
}

output "preferred_maintenance_window" {
  description = "The maintenance window"
  value       = try(aws_rds_cluster.this[0].preferred_maintenance_window, "")
}

output "endpoint" {
  description = "The DNS address of the RDS instance"
  value       = try(aws_rds_cluster.this[0].endpoint, "")
}

output "reader_endpoint" {
  description = "A read-only endpoint for the Aurora cluster, automatically load-balanced across replicas"
  value       = try(aws_rds_cluster.this[0].reader_endpoint, "")
}

output "engine" {
  description = "The database engine"
  value       = try(aws_rds_cluster.this[0].engine, "")
}

output "engine_version_actual" {
  description = "The running version of the database"
  value       = try(aws_rds_cluster.this[0].engine_version_actual, "")
}

output "database_name" {
  description = "The database name"
  value       = try(aws_rds_cluster.this[0].database_name, "")
}

output "port" {
  description = "The database port"
  value       = try(aws_rds_cluster.this[0].port, "")
}

output "master_username" {
  description = "The master username for the database"
  value       = try(aws_rds_cluster.this[0].master_username, "")
}

output "storage_encrypted" {
  description = "Specifies whether the DB cluster is encrypted"
  value       = try(aws_rds_cluster.this[0].storage_encrypted, "")
}

output "replication_source_identifier" {
  description = "ARN of the source DB cluster or DB instance if this DB cluster is created as a Read Replica"
  value       = try(aws_rds_cluster.this[0].replication_source_identifier, "")
}

output "hosted_zone_id" {
  description = "The Route53 Hosted Zone ID of the endpoint"
  value       = try(aws_rds_cluster.this[0].hosted_zone_id, "")
}
