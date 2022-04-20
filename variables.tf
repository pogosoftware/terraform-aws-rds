##########################################################################
### db_subnet_group
##########################################################################
variable "db_subnet_group_name" {
  description = "The name of the DB parameter group. If omitted, Terraform will assign a random, unique name"
  type        = string
}

variable "db_subnet_group_subnet_ids" {
  description = "A list of VPC subnet IDs"
  type        = list(string)
}

variable "create_db_subnet_group" {
  default     = true
  description = "Whether to create this resource or not?"
  type        = bool
}

variable "db_subnet_group_description" {
  default     = "Managed by Terraform"
  description = "The description of the DB parameter group. Defaults to \"Managed by Terraform\""
  type        = string
}

variable "db_subnet_group_tags" {
  default     = {}
  description = "A map of tags to assign to the resource"
  type        = map(string)
}

variable "db_subnet_group_use_name_prefix" {
  default     = true
  description = "Determines whether to use `name` as is or create a unique name beginning with `name` as the specified prefix"
  type        = bool
}

##########################################################################
### db_parameter_group
##########################################################################
variable "db_parameter_group_name" {
  description = "The name of the DB parameter group. If omitted, Terraform will assign a random, unique name"
  type        = string
}

variable "create_db_parameter_group" {
  default     = true
  description = "Whether to create this resource or not?"
  type        = bool
}

variable "db_parameter_group_description" {
  default     = "Managed by Terraform"
  description = "The description of the DB parameter group. Defaults to \"Managed by Terraform\""
  type        = string
}

variable "db_parameter_group_family" {
  default     = null
  description = "The family of the DB parameter group"
  type        = string
}

variable "db_parameter_group_parameters" {
  default     = []
  description = "A list of DB parameter maps to apply"
  type        = list(map(string))
}

variable "db_parameter_group_tags" {
  default     = {}
  description = "A map of tags to assign to the resource"
  type        = map(string)
}

variable "db_parameter_group_use_name_prefix" {
  default     = true
  description = "Determines whether to use `name` as is or create a unique name beginning with `name` as the specified prefix"
  type        = bool
}

##########################################################################
### rds_cluster_parameter_group
##########################################################################
variable "rds_cluster_parameter_group_name" {
  description = "The name of the DB cluster parameter group. If omitted, Terraform will assign a random, unique name"
  type        = string
}

variable "create_rds_cluster_parameter_group" {
  default     = true
  description = "Whether to create this resource or not?"
  type        = bool
}

variable "rds_cluster_parameter_group_description" {
  default     = "Managed by Terraform"
  description = "The description of the DB cluster parameter group. Defaults to \"Managed by Terraform\""
  type        = string
}

variable "rds_cluster_parameter_group_family" {
  default     = null
  description = "The family of the DB cluster parameter group"
  type        = string
}

variable "rds_cluster_parameter_group_parameters" {
  default     = []
  description = "A list of DB parameter maps to apply"
  type        = list(map(string))
}

variable "rds_cluster_parameter_group_tags" {
  default     = {}
  description = "A map of tags to assign to the resource"
  type        = map(string)
}

variable "rds_cluster_parameter_group_use_name_prefix" {
  default     = true
  description = "Determines whether to use `name` as is or create a unique name beginning with `name` as the specified prefix"
  type        = bool
}

##########################################################################
### rds_cluster
##########################################################################
variable "rds_cluster_cluster_identifier" {
  description = "The cluster identifier"
  type        = string
}

variable "rds_cluster_master_password" {
  description = "Password for the master DB user"
  type        = string
}

variable "rds_cluster_master_username" {
  description = "Username for the master DB user"
  type        = string
}

variable "create_rds_cluster" {
  description = "Whether to create this resource or not?"
  type        = bool
  default     = true
}

variable "rds_cluster_allocated_storage" {
  default     = null
  description = "he amount of storage in gibibytes (GiB) to allocate to each DB instance in the Multi-AZ DB cluster. (This setting is required to create a Multi-AZ DB cluster)"
  type        = string
}

variable "rds_cluster_allow_major_version_upgrade" {
  default     = false
  description = "Enable to allow major engine version upgrades when changing engine versions. Defaults to `false`"
  type        = bool
}

variable "rds_cluster_apply_immediately" {
  default     = false
  description = "Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is `false`"
  type        = bool
}

variable "rds_cluster_availability_zones" {
  default     = []
  description = "A list of EC2 Availability Zones for the DB cluster storage where DB cluster instances can be created. RDS automatically assigns 3 AZs if less than 3 AZs are configured, which will show as a difference requiring resource recreation next Terraform apply"
  type        = list(string)
}

variable "rds_cluster_backtrack_window" {
  default     = 0
  description = "The target backtrack window, in seconds. Only available for `aurora` and `aurora-mysql` engines currently. Defaults to `0`"
  type        = number
}

variable "rds_cluster_backup_retention_period" {
  default     = 1
  description = "The days to retain backups for. Default `1`"
  type        = number
}

variable "rds_cluster_cluster_timeouts" {
  description = "Create, update, and delete timeout configurations for the cluster"
  type        = map(string)
  default     = {}
}

variable "rds_cluster_copy_tags_to_snapshot" {
  default     = false
  description = "Copy all Cluster `tags` to snapshots"
  type        = bool
}

variable "rds_cluster_database_name" {
  default     = null
  description = "Name for an automatically created database on cluster creation"
  type        = string
}

variable "rds_cluster_db_cluster_parameter_group_name" {
  default     = null
  description = "A cluster parameter group to associate with the cluster"
  type        = string
}
variable "rds_cluster_db_instance_parameter_group_name" {
  default     = null
  description = "Instance parameter group to associate with all instances of the DB cluster"
  type        = string
}
variable "rds_cluster_db_subnet_group_name" {
  default     = null
  description = "A DB subnet group to associate with this DB instance"
  type        = string
}

variable "rds_cluster_deletion_protection" {
  default     = false
  description = " If the DB instance should have deletion protection enabled. The database can't be deleted when this value is set to `true`"
  type        = string
}

variable "rds_cluster_enable_http_endpoint" {
  default     = null
  description = " Enable HTTP endpoint (data API). Only valid when `engine_mode` is set to `serverless`"
  type        = bool
}

variable "rds_cluster_enabled_cloudwatch_logs_exports" {
  default     = []
  description = "Set of log types to export to cloudwatch. If omitted, no logs will be exported. The following log types are supported: `audit`, `error`, `general`, `slowquery`, `postgresql` (PostgreSQL)"
  type        = list(string)
}

variable "rds_cluster_engine" {
  default     = "aurora"
  description = " The name of the database engine to be used for this DB cluster. Defaults to `aurora`. Valid Values: `aurora`, `aurora-mysql`, `aurora-postgresql`, `mysql`, `postgres`. (Note that mysql and postgres are Multi-AZ RDS clusters)"
  type        = string
}

variable "rds_cluster_engine_mode" {
  default     = "provisioned"
  description = "The database engine mode. Valid values: `global` (only valid for Aurora MySQL 1.21 and earlier), `multimaster`, `parallelquery`, `provisioned`, `serverless`. Defaults to: `provisioned`"
  type        = string
}

variable "rds_cluster_engine_version" {
  description = "The database engine version. Updating this argument results in an outage"
  type        = string
  default     = null
}

variable "rds_cluster_db_cluster_instance_class" {
  default     = null
  description = "The compute and memory capacity of each DB instance in the Multi-AZ DB cluster, for example db.m6g.xlarge. Not all DB instance classes are available in all AWS Regions"
  type        = string
}

variable "rds_cluster_final_snapshot_identifier" {
  default     = null
  description = "The name of your final DB snapshot when this DB cluster is deleted. If omitted, no final snapshot will be made"
  type        = string
}

variable "rds_cluster_global_cluster_identifier" {
  default     = null
  description = " The global cluster identifier specified on `aws_rds_global_cluster`"
  type        = string
}

variable "rds_cluster_enable_global_write_forwarding" {
  default     = null
  description = " Whether cluster should forward writes to an associated global cluster. Applied to secondary clusters to enable them to forward writes to an `aws_rds_global_cluster`'s primary cluster"
  type        = bool
}

variable "rds_cluster_iam_database_authentication_enabled" {
  default     = null
  description = "Specifies whether or not mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled"
  type        = bool
}

variable "rds_cluster_iam_roles" {
  default     = []
  description = "A List of ARNs for the IAM roles to associate to the RDS Cluster."
  type        = list(string)
}

variable "rds_cluster_kms_key_id" {
  default     = null
  description = "The ARN for the KMS encryption key. When specifying `kms_key_id`, `storage_encrypted` needs to be set to `true`"
  type        = string
}

variable "rds_cluster_port" {
  default     = null
  description = "The port on which the DB accepts connections"
  type        = number
}

variable "rds_cluster_preferred_backup_window" {
  default     = "02:00-03:00"
  description = "The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter.Time in UTC. Defaults: `02:00-03:00`"
  type        = string
}

variable "rds_cluster_preferred_maintenance_window" {
  default     = "sun:05:00-sun:06:00"
  description = "The weekly time range during which system maintenance can occur, in (UTC). Defaults: `sun:05:00-sun:06:00`"
  type        = string
}

variable "rds_cluster_replication_source_identifier" {
  default     = null
  description = " ARN of a source DB cluster or DB instance if this DB cluster is to be created as a Read Replica"
  type        = string
}

variable "rds_cluster_restore_to_point_in_time" {
  default     = {}
  description = "Map of nested attributes for cloning Aurora cluster"
  type        = map(string)
}

variable "rds_cluster_s3_import" {
  description = "Configuration map used to restore from a Percona Xtrabackup in S3 (only MySQL is supported)"
  type        = map(string)
  default     = null
}

variable "rds_cluster_scaling_configuration" {
  default     = {}
  description = "Nested attribute with scaling properties. Only valid when `engine_mode` is set to `serverless`"
  type        = map(string)
}

variable "rds_cluster_skip_final_snapshot" {
  default     = false
  description = " Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from `final_snapshot_identifier`"
  type        = bool
}

variable "rds_cluster_snapshot_identifier" {
  default     = null
  description = "Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot"
  type        = string
}

variable "rds_cluster_source_region" {
  default     = null
  description = " The source region for an encrypted replica DB cluster"
  type        = string
}

variable "rds_cluster_storage_type" {
  default     = "io1"
  description = "Specifies the storage type to be associated with the DB cluster. (This setting is required to create a Multi-AZ DB cluster). Valid values: `io1`, Default: `io1`"
  type        = string
}

variable "rds_cluster_iops" {
  default     = null
  description = " The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for each DB instance in the Multi-AZ DB cluster"
  type        = number
}

variable "rds_cluster_storage_encrypted" {
  default     = null
  description = "Specifies whether the DB cluster is encrypted. The default is `false` for `provisioned engine_mode` and `true` for `serverless engine_mode`. When restoring an unencrypted `snapshot_identifier`, the `kms_key_id` argument must be provided to encrypt the restored cluster. Terraform will only perform drift detection if a configuration value is provided"
  type        = bool
}

variable "rds_cluster_tags" {
  default     = {}
  description = "A map of tags to assign to the DB cluster"
  type        = map(string)
}

variable "rds_cluster_vpc_security_group_ids" {
  default     = []
  description = "List of VPC security groups to associate with the Cluster"
  type        = list(string)
}

variable "rds_cluster_use_cluster_identifier_prefix" {
  default     = true
  description = "Determines whether to use `cluster_identifier` as is or create a unique name beginning with `cluster_identifier` as the specified prefix"
  type        = bool
}

##########################################################################
### rds_cluster_instance
##########################################################################
variable "rds_cluster_instance_identifier" {
  description = "The identifier for the RDS instance, if omitted, Terraform will assign a random, unique identifier"
  type        = string
}

variable "rds_cluster_instance_cluster_identifier" {
  description = "The identifier of the `aws_rds_cluster` in which to launch this instance"
  type        = string
}

variable "rds_cluster_instance_class" {
  description = "The instance class to use"
  type        = string
}

variable "rds_cluster_number_of_instances" {
  default     = 1
  description = "Number od RDS cluster instance to create"
  type        = number
}

variable "create_rds_cluster_instance" {
  description = "Whether to create this resource or not?"
  type        = bool
  default     = true
}

variable "rds_cluster_instance_engine" {
  default     = "aurora"
  description = " The name of the database engine to be used for this DB cluster. Defaults to `aurora`. Valid Values: `aurora`, `aurora-mysql`, `aurora-postgresql`, `mysql`, `postgres`. (Note that mysql and postgres are Multi-AZ RDS clusters)"
  type        = string
}

variable "rds_cluster_instance_engine_version" {
  description = "The database engine version. Updating this argument results in an outage"
  type        = string
  default     = null
}

variable "rds_cluster_instance_publicly_accessible" {
  default     = false
  description = "Bool to control if instance is publicly accessible"
  type        = bool
}

variable "rds_cluster_instance_db_subnet_group_name" {
  default     = null
  description = "A DB subnet group to associate with this DB instance"
  type        = string
}

variable "rds_cluster_instance_db_parameter_group_name" {
  default     = null
  description = "The name of the DB parameter group to associate with this instance"
  type        = string
}

variable "rds_cluster_instance_apply_immediately" {
  default     = false
  description = "Specifies whether any database modifications are applied immediately, or during the next maintenance window. Default is `false`"
  type        = bool
}

variable "rds_cluster_instance_monitoring_role_arn" {
  default     = null
  description = "The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs"
  type        = string
}

variable "rds_cluster_instance_monitoring_interval" {
  default     = 0
  description = "The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify `0`. The default is `0`. Valid Values: `0`, `1`, `5`, `10`, `15`, `30`, `60`"
  type        = number
}

variable "rds_cluster_instance_promotion_tier" {
  default     = 0
  description = "Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoted to writer. Default is `0`"
  type        = number
}

variable "rds_cluster_instance_availability_zone" {
  default     = null
  description = "The EC2 Availability Zone that the DB instance is created in"
  type        = string
}

variable "rds_cluster_instance_preferred_backup_window" {
  default     = "02:00-03:00"
  description = "The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter.Time in UTC. Defaults: `02:00-03:00`"
  type        = string
}

variable "rds_cluster_instance_preferred_maintenance_window" {
  default     = "sun:05:00-sun:06:00"
  description = "The weekly time range during which system maintenance can occur, in (UTC). Defaults: `sun:05:00-sun:06:00`"
  type        = string
}

variable "rds_cluster_instance_auto_minor_version_upgrade" {
  default     = true
  description = "Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window. Default is `true`"
  type        = bool
}

variable "rds_cluster_instance_performance_insights_enabled" {
  default     = null
  description = "Specifies whether Performance Insights is enabled or not"
  type        = bool
}

variable "rds_cluster_instance_performance_insights_kms_key_id" {
  default     = null
  description = "ARN for the KMS key to encrypt Performance Insights data. When specifying `performance_insights_kms_key_id`, `performance_insights_enabled` needs to be set to `true`"
  type        = string
}

variable "rds_cluster_instance_performance_insights_retention_period" {
  default     = 7
  description = "Amount of time in days to retain Performance Insights data. Either 7 (7 days) or 731 (2 years). When specifying `performance_insights_retention_period`, `performance_insights_enabled` needs to be set to true. Defaults to `7`"
  type        = number
}

variable "rds_cluster_instance_copy_tags_to_snapshot" {
  default     = false
  description = "Copy all Cluster `tags` to snapshots"
  type        = bool
}

variable "rds_cluster_instance_ca_cert_identifier" {
  default     = null
  description = "The identifier of the CA certificate for the DB instance"
  type        = string
}

variable "rds_cluster_instance_tags" {
  default     = {}
  description = "A map of tags to assign to the DB cluster"
  type        = map(string)
}

variable "rds_cluster_instance_instance_timeouts" {
  description = "Create, update, and delete timeout configurations for the cluster instance(s)"
  type        = map(string)
  default     = {}
}

variable "rds_cluster_instance_use_identifier_prefix" {
  default     = true
  description = "Determines whether to use `identifier` as is or create a unique name beginning with `identifier` as the specified prefix"
  type        = bool
}
