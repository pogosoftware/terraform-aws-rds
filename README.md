# terraform-aws-rds

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_db_parameter_group"></a> [db\_parameter\_group](#module\_db\_parameter\_group) | ./modules/db_parameter_group | n/a |
| <a name="module_db_subnet_group"></a> [db\_subnet\_group](#module\_db\_subnet\_group) | ./modules/db_subnet_group | n/a |
| <a name="module_rds_cluster"></a> [rds\_cluster](#module\_rds\_cluster) | ./modules/rds_cluster | n/a |
| <a name="module_rds_cluster_instance"></a> [rds\_cluster\_instance](#module\_rds\_cluster\_instance) | ./modules/rds_cluster_instance | n/a |
| <a name="module_rds_cluster_parameter_group"></a> [rds\_cluster\_parameter\_group](#module\_rds\_cluster\_parameter\_group) | ./modules/rds_cluster_parameter_group | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allocated_storage"></a> [allocated\_storage](#input\_allocated\_storage) | he amount of storage in gibibytes (GiB) to allocate to each DB instance in the Multi-AZ DB cluster. (This setting is required to create a Multi-AZ DB cluster) | `string` | `null` | no |
| <a name="input_allow_major_version_upgrade"></a> [allow\_major\_version\_upgrade](#input\_allow\_major\_version\_upgrade) | Enable to allow major engine version upgrades when changing engine versions. Defaults to `false` | `bool` | `false` | no |
| <a name="input_apply_immediately"></a> [apply\_immediately](#input\_apply\_immediately) | Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is `false` | `bool` | `false` | no |
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | A list of EC2 Availability Zones for the DB cluster storage where DB cluster instances can be created. RDS automatically assigns 3 AZs if less than 3 AZs are configured, which will show as a difference requiring resource recreation next Terraform apply | `list(string)` | `null` | no |
| <a name="input_backtrack_window"></a> [backtrack\_window](#input\_backtrack\_window) | The target backtrack window, in seconds. Only available for `aurora` and `aurora-mysql` engines currently. Defaults to `0` | `number` | `0` | no |
| <a name="input_backup_retention_period"></a> [backup\_retention\_period](#input\_backup\_retention\_period) | The days to retain backups for. Default `1` | `number` | `1` | no |
| <a name="input_cluster_identifier"></a> [cluster\_identifier](#input\_cluster\_identifier) | Required when `create_rds_cluster` is true. The cluster identifier | `string` | `""` | no |
| <a name="input_cluster_timeouts"></a> [cluster\_timeouts](#input\_cluster\_timeouts) | Create, update, and delete timeout configurations for the cluster | `map(string)` | `{}` | no |
| <a name="input_copy_tags_to_snapshot"></a> [copy\_tags\_to\_snapshot](#input\_copy\_tags\_to\_snapshot) | Copy all Cluster `tags` to snapshots | `bool` | `false` | no |
| <a name="input_create_db_parameter_group"></a> [create\_db\_parameter\_group](#input\_create\_db\_parameter\_group) | Whether to create this resource or not? | `bool` | `true` | no |
| <a name="input_create_db_subnet_group"></a> [create\_db\_subnet\_group](#input\_create\_db\_subnet\_group) | Whether to create this resource or not? | `bool` | `true` | no |
| <a name="input_create_rds_cluster"></a> [create\_rds\_cluster](#input\_create\_rds\_cluster) | Whether to create this resource or not? | `bool` | `true` | no |
| <a name="input_create_rds_cluster_parameter_group"></a> [create\_rds\_cluster\_parameter\_group](#input\_create\_rds\_cluster\_parameter\_group) | Whether to create this resource or not? | `bool` | `true` | no |
| <a name="input_database_name"></a> [database\_name](#input\_database\_name) | Name for an automatically created database on cluster creation | `string` | `null` | no |
| <a name="input_db_cluster_instance_class"></a> [db\_cluster\_instance\_class](#input\_db\_cluster\_instance\_class) | The compute and memory capacity of each DB instance in the Multi-AZ DB cluster, for example db.m6g.xlarge. Not all DB instance classes are available in all AWS Regions | `string` | `null` | no |
| <a name="input_db_cluster_parameter_group_name"></a> [db\_cluster\_parameter\_group\_name](#input\_db\_cluster\_parameter\_group\_name) | A cluster parameter group to associate with the cluster | `string` | `null` | no |
| <a name="input_db_instance_parameter_group_name"></a> [db\_instance\_parameter\_group\_name](#input\_db\_instance\_parameter\_group\_name) | Instance parameter group to associate with all instances of the DB cluster | `string` | `null` | no |
| <a name="input_db_parameter_group_description"></a> [db\_parameter\_group\_description](#input\_db\_parameter\_group\_description) | The description of the DB parameter group. Defaults to "Managed by Terraform" | `string` | `"Managed by Terraform"` | no |
| <a name="input_db_parameter_group_family"></a> [db\_parameter\_group\_family](#input\_db\_parameter\_group\_family) | The family of the DB parameter group | `string` | `null` | no |
| <a name="input_db_parameter_group_name"></a> [db\_parameter\_group\_name](#input\_db\_parameter\_group\_name) | Required when `create_db_parameter_group` is true. The name of the DB parameter group | `string` | `""` | no |
| <a name="input_db_parameter_group_parameters"></a> [db\_parameter\_group\_parameters](#input\_db\_parameter\_group\_parameters) | A list of DB parameter maps to apply | `list(map(string))` | `[]` | no |
| <a name="input_db_parameter_group_tags"></a> [db\_parameter\_group\_tags](#input\_db\_parameter\_group\_tags) | A map of tags to assign to the resource | `map(string)` | `{}` | no |
| <a name="input_db_parameter_group_use_name_prefix"></a> [db\_parameter\_group\_use\_name\_prefix](#input\_db\_parameter\_group\_use\_name\_prefix) | Determines whether to use `name` as is or create a unique name beginning with `name` as the specified prefix | `bool` | `true` | no |
| <a name="input_db_subnet_group_description"></a> [db\_subnet\_group\_description](#input\_db\_subnet\_group\_description) | The description of the DB parameter group. Defaults to "Managed by Terraform" | `string` | `"Managed by Terraform"` | no |
| <a name="input_db_subnet_group_name"></a> [db\_subnet\_group\_name](#input\_db\_subnet\_group\_name) | The name of the DB parameter group | `string` | `""` | no |
| <a name="input_db_subnet_group_subnet_ids"></a> [db\_subnet\_group\_subnet\_ids](#input\_db\_subnet\_group\_subnet\_ids) | Required when `create_db_subnet_group` is true. A list of VPC subnet IDs | `list(string)` | `[]` | no |
| <a name="input_db_subnet_group_tags"></a> [db\_subnet\_group\_tags](#input\_db\_subnet\_group\_tags) | A map of tags to assign to the resource | `map(string)` | `{}` | no |
| <a name="input_db_subnet_group_use_name_prefix"></a> [db\_subnet\_group\_use\_name\_prefix](#input\_db\_subnet\_group\_use\_name\_prefix) | Determines whether to use `name` as is or create a unique name beginning with `name` as the specified prefix | `bool` | `true` | no |
| <a name="input_deletion_protection"></a> [deletion\_protection](#input\_deletion\_protection) | If the DB instance should have deletion protection enabled. The database can't be deleted when this value is set to `true` | `string` | `false` | no |
| <a name="input_enable_global_write_forwarding"></a> [enable\_global\_write\_forwarding](#input\_enable\_global\_write\_forwarding) | Whether cluster should forward writes to an associated global cluster. Applied to secondary clusters to enable them to forward writes to an `aws_rds_global_cluster`'s primary cluster | `bool` | `null` | no |
| <a name="input_enable_http_endpoint"></a> [enable\_http\_endpoint](#input\_enable\_http\_endpoint) | Enable HTTP endpoint (data API). Only valid when `engine_mode` is set to `serverless` | `bool` | `null` | no |
| <a name="input_enabled_cloudwatch_logs_exports"></a> [enabled\_cloudwatch\_logs\_exports](#input\_enabled\_cloudwatch\_logs\_exports) | Set of log types to export to cloudwatch. If omitted, no logs will be exported. The following log types are supported: `audit`, `error`, `general`, `slowquery`, `postgresql` (PostgreSQL) | `list(string)` | `[]` | no |
| <a name="input_engine"></a> [engine](#input\_engine) | The name of the database engine to be used for this DB cluster. Defaults to `aurora`. Valid Values: `aurora`, `aurora-mysql`, `aurora-postgresql`, `mysql`, `postgres`. (Note that mysql and postgres are Multi-AZ RDS clusters) | `string` | `"aurora"` | no |
| <a name="input_engine_mode"></a> [engine\_mode](#input\_engine\_mode) | The database engine mode. Valid values: `global` (only valid for Aurora MySQL 1.21 and earlier), `multimaster`, `parallelquery`, `provisioned`, `serverless`. Defaults to: `provisioned` | `string` | `"provisioned"` | no |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | The database engine version. Updating this argument results in an outage | `string` | `null` | no |
| <a name="input_final_snapshot_identifier"></a> [final\_snapshot\_identifier](#input\_final\_snapshot\_identifier) | The name of your final DB snapshot when this DB cluster is deleted. If omitted, no final snapshot will be made | `string` | `null` | no |
| <a name="input_global_cluster_identifier"></a> [global\_cluster\_identifier](#input\_global\_cluster\_identifier) | The global cluster identifier specified on `aws_rds_global_cluster` | `string` | `null` | no |
| <a name="input_iam_database_authentication_enabled"></a> [iam\_database\_authentication\_enabled](#input\_iam\_database\_authentication\_enabled) | Specifies whether or not mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled | `bool` | `null` | no |
| <a name="input_iam_roles"></a> [iam\_roles](#input\_iam\_roles) | A List of ARNs for the IAM roles to associate to the RDS Cluster. | `list(string)` | `[]` | no |
| <a name="input_iops"></a> [iops](#input\_iops) | The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for each DB instance in the Multi-AZ DB cluster | `number` | `null` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | The ARN for the KMS encryption key. When specifying `kms_key_id`, `storage_encrypted` needs to be set to `true` | `string` | `null` | no |
| <a name="input_master_password"></a> [master\_password](#input\_master\_password) | Required when `create_rds_cluster` is true. Password for the master DB user | `string` | `""` | no |
| <a name="input_master_username"></a> [master\_username](#input\_master\_username) | Required when `create_rds_cluster` is true. Username for the master DB user | `string` | `""` | no |
| <a name="input_port"></a> [port](#input\_port) | The port on which the DB accepts connections | `number` | `null` | no |
| <a name="input_preferred_backup_window"></a> [preferred\_backup\_window](#input\_preferred\_backup\_window) | The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter.Time in UTC. Defaults: `02:00-03:00` | `string` | `"02:00-03:00"` | no |
| <a name="input_preferred_maintenance_window"></a> [preferred\_maintenance\_window](#input\_preferred\_maintenance\_window) | The weekly time range during which system maintenance can occur, in (UTC). Defaults: `sun:05:00-sun:06:00` | `string` | `"sun:05:00-sun:06:00"` | no |
| <a name="input_rds_cluster_instance_tags"></a> [rds\_cluster\_instance\_tags](#input\_rds\_cluster\_instance\_tags) | A map of tags to assign to the DB cluster | `map(string)` | `{}` | no |
| <a name="input_rds_cluster_instances"></a> [rds\_cluster\_instances](#input\_rds\_cluster\_instances) | Map of the RDS cluster instances | `map(any)` | `{}` | no |
| <a name="input_rds_cluster_parameter_group_description"></a> [rds\_cluster\_parameter\_group\_description](#input\_rds\_cluster\_parameter\_group\_description) | The description of the DB cluster parameter group. Defaults to "Managed by Terraform" | `string` | `"Managed by Terraform"` | no |
| <a name="input_rds_cluster_parameter_group_family"></a> [rds\_cluster\_parameter\_group\_family](#input\_rds\_cluster\_parameter\_group\_family) | The family of the DB cluster parameter group | `string` | `null` | no |
| <a name="input_rds_cluster_parameter_group_name"></a> [rds\_cluster\_parameter\_group\_name](#input\_rds\_cluster\_parameter\_group\_name) | Required when `create_rds_cluster_parameter_group` is true. The name of the DB cluster parameter group | `string` | `""` | no |
| <a name="input_rds_cluster_parameter_group_parameters"></a> [rds\_cluster\_parameter\_group\_parameters](#input\_rds\_cluster\_parameter\_group\_parameters) | A list of DB parameter maps to apply | `list(map(string))` | `[]` | no |
| <a name="input_rds_cluster_parameter_group_tags"></a> [rds\_cluster\_parameter\_group\_tags](#input\_rds\_cluster\_parameter\_group\_tags) | A map of tags to assign to the resource | `map(string)` | `{}` | no |
| <a name="input_rds_cluster_parameter_group_use_name_prefix"></a> [rds\_cluster\_parameter\_group\_use\_name\_prefix](#input\_rds\_cluster\_parameter\_group\_use\_name\_prefix) | Determines whether to use `name` as is or create a unique name beginning with `name` as the specified prefix | `bool` | `true` | no |
| <a name="input_rds_cluster_tags"></a> [rds\_cluster\_tags](#input\_rds\_cluster\_tags) | A map of tags to assign to the DB cluster | `map(string)` | `{}` | no |
| <a name="input_replication_source_identifier"></a> [replication\_source\_identifier](#input\_replication\_source\_identifier) | ARN of a source DB cluster or DB instance if this DB cluster is to be created as a Read Replica | `string` | `null` | no |
| <a name="input_restore_to_point_in_time"></a> [restore\_to\_point\_in\_time](#input\_restore\_to\_point\_in\_time) | Map of nested attributes for cloning Aurora cluster | `map(string)` | `{}` | no |
| <a name="input_s3_import"></a> [s3\_import](#input\_s3\_import) | Configuration map used to restore from a Percona Xtrabackup in S3 (only MySQL is supported) | `map(string)` | `null` | no |
| <a name="input_scaling_configuration"></a> [scaling\_configuration](#input\_scaling\_configuration) | Nested attribute with scaling properties. Only valid when `engine_mode` is set to `serverless` | `map(string)` | `{}` | no |
| <a name="input_skip_final_snapshot"></a> [skip\_final\_snapshot](#input\_skip\_final\_snapshot) | Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from `final_snapshot_identifier` | `bool` | `false` | no |
| <a name="input_snapshot_identifier"></a> [snapshot\_identifier](#input\_snapshot\_identifier) | Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot | `string` | `null` | no |
| <a name="input_source_region"></a> [source\_region](#input\_source\_region) | The source region for an encrypted replica DB cluster | `string` | `null` | no |
| <a name="input_storage_encrypted"></a> [storage\_encrypted](#input\_storage\_encrypted) | Specifies whether the DB cluster is encrypted. The default is `false` for `provisioned engine_mode` and `true` for `serverless engine_mode`. When restoring an unencrypted `snapshot_identifier`, the `kms_key_id` argument must be provided to encrypt the restored cluster. Terraform will only perform drift detection if a configuration value is provided | `bool` | `null` | no |
| <a name="input_storage_type"></a> [storage\_type](#input\_storage\_type) | Specifies the storage type to be associated with the DB cluster. (This setting is required to create a Multi-AZ DB cluster). Valid values: `io1` | `string` | `null` | no |
| <a name="input_use_cluster_identifier_prefix"></a> [use\_cluster\_identifier\_prefix](#input\_use\_cluster\_identifier\_prefix) | Determines whether to use `cluster_identifier` as is or create a unique name beginning with `cluster_identifier` as the specified prefix | `bool` | `true` | no |
| <a name="input_vpc_security_group_ids"></a> [vpc\_security\_group\_ids](#input\_vpc\_security\_group\_ids) | List of VPC security groups to associate with the Cluster | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | Amazon Resource Name (ARN) of cluster |
| <a name="output_availability_zones"></a> [availability\_zones](#output\_availability\_zones) | The availability zone of the instance |
| <a name="output_backup_retention_period"></a> [backup\_retention\_period](#output\_backup\_retention\_period) | The backup retention period |
| <a name="output_cluster_identifier"></a> [cluster\_identifier](#output\_cluster\_identifier) | The RDS Cluster Identifier |
| <a name="output_cluster_members"></a> [cluster\_members](#output\_cluster\_members) | List of RDS Instances that are a part of this cluster |
| <a name="output_cluster_resource_id"></a> [cluster\_resource\_id](#output\_cluster\_resource\_id) | The RDS Cluster Resource ID |
| <a name="output_database_name"></a> [database\_name](#output\_database\_name) | The database name |
| <a name="output_db_parameter_group_arn"></a> [db\_parameter\_group\_arn](#output\_db\_parameter\_group\_arn) | The ARN of the db parameter group |
| <a name="output_db_parameter_group_family"></a> [db\_parameter\_group\_family](#output\_db\_parameter\_group\_family) | The family of the db parameter group |
| <a name="output_db_parameter_group_id"></a> [db\_parameter\_group\_id](#output\_db\_parameter\_group\_id) | The ID of the db parameter group |
| <a name="output_db_parameter_group_name"></a> [db\_parameter\_group\_name](#output\_db\_parameter\_group\_name) | The name of the db parameter group |
| <a name="output_db_parameter_group_parameters"></a> [db\_parameter\_group\_parameters](#output\_db\_parameter\_group\_parameters) | The parameters of the db parameter group |
| <a name="output_db_subnet_group_arn"></a> [db\_subnet\_group\_arn](#output\_db\_subnet\_group\_arn) | The ARN of the db subnet group |
| <a name="output_db_subnet_group_id"></a> [db\_subnet\_group\_id](#output\_db\_subnet\_group\_id) | The ID of the db subnet group |
| <a name="output_db_subnet_group_name"></a> [db\_subnet\_group\_name](#output\_db\_subnet\_group\_name) | The name of the db subnet group |
| <a name="output_db_subnet_group_subnet_ids"></a> [db\_subnet\_group\_subnet\_ids](#output\_db\_subnet\_group\_subnet\_ids) | The subnets IDs of the db subnet group |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | The DNS address of the RDS instance |
| <a name="output_engine"></a> [engine](#output\_engine) | The database engine |
| <a name="output_engine_version"></a> [engine\_version](#output\_engine\_version) | The running version of the database |
| <a name="output_engine_version_actual"></a> [engine\_version\_actual](#output\_engine\_version\_actual) | The running version of the database |
| <a name="output_hosted_zone_id"></a> [hosted\_zone\_id](#output\_hosted\_zone\_id) | The Route53 Hosted Zone ID of the endpoint |
| <a name="output_id"></a> [id](#output\_id) | The RDS Cluster Identifier |
| <a name="output_master_username"></a> [master\_username](#output\_master\_username) | The master username for the database |
| <a name="output_port"></a> [port](#output\_port) | The database port |
| <a name="output_preferred_backup_window"></a> [preferred\_backup\_window](#output\_preferred\_backup\_window) | The daily time range during which the backups happen |
| <a name="output_preferred_maintenance_window"></a> [preferred\_maintenance\_window](#output\_preferred\_maintenance\_window) | The maintenance window |
| <a name="output_rds_cluster_instances"></a> [rds\_cluster\_instances](#output\_rds\_cluster\_instances) | The list of the rds cluster |
| <a name="output_rds_cluster_parameter_group_arn"></a> [rds\_cluster\_parameter\_group\_arn](#output\_rds\_cluster\_parameter\_group\_arn) | The ARN of the db cluster parameter group |
| <a name="output_rds_cluster_parameter_group_family"></a> [rds\_cluster\_parameter\_group\_family](#output\_rds\_cluster\_parameter\_group\_family) | The family of the db cluster parameter group |
| <a name="output_rds_cluster_parameter_group_id"></a> [rds\_cluster\_parameter\_group\_id](#output\_rds\_cluster\_parameter\_group\_id) | The ID of the db cluster parameter group |
| <a name="output_rds_cluster_parameter_group_name"></a> [rds\_cluster\_parameter\_group\_name](#output\_rds\_cluster\_parameter\_group\_name) | The name of the db cluster parameter group |
| <a name="output_rds_cluster_parameter_group_parameters"></a> [rds\_cluster\_parameter\_group\_parameters](#output\_rds\_cluster\_parameter\_group\_parameters) | The parameters of the db cluster parameter group |
| <a name="output_reader_endpoint"></a> [reader\_endpoint](#output\_reader\_endpoint) | A read-only endpoint for the Aurora cluster, automatically load-balanced across replicas |
| <a name="output_replication_source_identifier"></a> [replication\_source\_identifier](#output\_replication\_source\_identifier) | ARN of the source DB cluster or DB instance if this DB cluster is created as a Read Replica |
| <a name="output_storage_encrypted"></a> [storage\_encrypted](#output\_storage\_encrypted) | Specifies whether the DB cluster is encrypted |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->