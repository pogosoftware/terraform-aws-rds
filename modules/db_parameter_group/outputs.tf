output "id" {
  description = "The db parameter group name"
  value       = try(aws_db_parameter_group.this[0].id, "")
}

output "arn" {
  description = "The ARN of the db parameter group"
  value       = try(aws_db_parameter_group.this[0].arn, "")
}
