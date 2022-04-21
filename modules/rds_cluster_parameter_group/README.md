# Module: aws_rds_cluster_parameter_group

Provides an RDS DB cluster parameter group resource. Documentation of the available parameters for various Aurora engines can be found at:

* [Aurora MySQL Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraMySQL.Reference.html)
* [Aurora PostgreSQL Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AuroraPostgreSQL.Reference.html)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.10 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.10.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_rds_cluster_parameter_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rds_cluster_parameter_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Whether to create this resource or not? | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | The description of the DB cluster parameter group. Defaults to "Managed by Terraform" | `string` | `"Managed by Terraform"` | no |
| <a name="input_family"></a> [family](#input\_family) | The family of the DB cluster parameter group | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the DB cluster parameter group. If omitted, Terraform will assign a random, unique name | `string` | n/a | yes |
| <a name="input_parameters"></a> [parameters](#input\_parameters) | A list of DB parameter maps to apply | `list(map(string))` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource | `map(string)` | `{}` | no |
| <a name="input_use_name_prefix"></a> [use\_name\_prefix](#input\_use\_name\_prefix) | Determines whether to use `name` as is or create a unique name beginning with `name` as the specified prefix | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN of the db cluster parameter group |
| <a name="output_id"></a> [id](#output\_id) | The db cluster parameter group name |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->