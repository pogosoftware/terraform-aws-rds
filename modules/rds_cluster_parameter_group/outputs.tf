output "id" {
  description = "The db cluster parameter group name"
  value       = try(aws_rds_cluster_parameter_group.this[0].id, "")
}

output "arn" {
  description = "The ARN of the db cluster parameter group"
  value       = try(aws_rds_cluster_parameter_group.this[0].arn, "")
}
