output "id" {
  description = "The db subnet group name"
  value       = try(aws_db_subnet_group.this[0].id, "")
}

output "arn" {
  description = "The ARN of the db subnet group"
  value       = try(aws_db_subnet_group.this[0].arn, "")
}
