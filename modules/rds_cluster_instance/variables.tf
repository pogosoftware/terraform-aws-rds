##########################################################################
### REQUIRED
##########################################################################
variable "identifier" {
  description = "The identifier for the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = string
}

variable "cluster_identifier" {
  description = "The identifier of the `aws_rds_cluster` in which to launch this instance"
  type        = string
}

variable "instance_class" {
  description = "The instance class to use"
  type        = string
}

variable "number_of_instances" {
  default     = 1
  description = "Number od RDS cluster instance to create"
  type        = number
}

##########################################################################
### OPTIONAL
##########################################################################
variable "create" {
  description = "Whether to create this resource or not?"
  type        = bool
  default     = true
}

variable "engine" {
  default     = "aurora"
  description = " The name of the database engine to be used for this DB cluster. Defaults to `aurora`. Valid Values: `aurora`, `aurora-mysql`, `aurora-postgresql`, `mysql`, `postgres`. (Note that mysql and postgres are Multi-AZ RDS clusters)"
  type        = string
}

variable "engine_version" {
  description = "The database engine version. Updating this argument results in an outage"
  type        = string
  default     = null
}

variable "publicly_accessible" {
  default     = false
  description = "Bool to control if instance is publicly accessible"
  type        = bool
}

variable "db_subnet_group_name" {
  default     = null
  description = "A DB subnet group to associate with this DB instance"
  type        = string
}

variable "db_parameter_group_name" {
  default     = null
  description = "The name of the DB parameter group to associate with this instance"
  type        = string
}

variable "apply_immediately" {
  default     = false
  description = "Specifies whether any database modifications are applied immediately, or during the next maintenance window. Default is `false`"
  type        = bool
}

variable "monitoring_role_arn" {
  default     = null
  description = "The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs"
  type        = string
}

variable "monitoring_interval" {
  default     = 0
  description = "The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify `0`. The default is `0`. Valid Values: `0`, `1`, `5`, `10`, `15`, `30`, `60`"
  type        = number
}

variable "promotion_tier" {
  default     = 0
  description = "Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoted to writer. Default is `0`"
  type        = number
}

variable "availability_zone" {
  default     = null
  description = "The EC2 Availability Zone that the DB instance is created in"
  type        = string
}

variable "preferred_backup_window" {
  default     = "02:00-03:00"
  description = "The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter.Time in UTC. Defaults: `02:00-03:00`"
  type        = string
}

variable "preferred_maintenance_window" {
  default     = "sun:05:00-sun:06:00"
  description = "The weekly time range during which system maintenance can occur, in (UTC). Defaults: `sun:05:00-sun:06:00`"
  type        = string
}

variable "auto_minor_version_upgrade" {
  default     = true
  description = "Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window. Default is `true`"
  type        = bool
}

variable "performance_insights_enabled" {
  default     = null
  description = "Specifies whether Performance Insights is enabled or not"
  type        = bool
}

variable "performance_insights_kms_key_id" {
  default     = null
  description = "ARN for the KMS key to encrypt Performance Insights data. When specifying `performance_insights_kms_key_id`, `performance_insights_enabled` needs to be set to `true`"
  type        = string
}

variable "performance_insights_retention_period" {
  default     = 7
  description = "Amount of time in days to retain Performance Insights data. Either 7 (7 days) or 731 (2 years). When specifying `performance_insights_retention_period`, `performance_insights_enabled` needs to be set to true. Defaults to `7`"
  type        = number
}

variable "copy_tags_to_snapshot" {
  default     = false
  description = "Copy all Cluster `tags` to snapshots"
  type        = bool
}

variable "ca_cert_identifier" {
  default     = null
  description = "The identifier of the CA certificate for the DB instance"
  type        = string
}

variable "tags" {
  default     = {}
  description = "A map of tags to assign to the DB cluster"
  type        = map(string)
}

variable "instance_timeouts" {
  description = "Create, update, and delete timeout configurations for the cluster instance(s)"
  type        = map(string)
  default     = {}
}

variable "use_identifier_prefix" {
  default     = true
  description = "Determines whether to use `identifier` as is or create a unique name beginning with `identifier` as the specified prefix"
  type        = bool
}
