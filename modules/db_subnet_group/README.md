# Module: aws_db_subnet_group

Provides an RDS DB subnet group resource.

> **_Hands-on_** <br>
For an example of the `aws_db_subnet_group` in use, follow the [Manage AWS RDS Instances](https://learn.hashicorp.com/tutorials/terraform/aws-rds?in=terraform/aws&utm_source=WEBSITE&utm_medium=WEB_IO&utm_offer=ARTICLE_PAGE&utm_content=DOCS) tutorial on HashiCorp Learn.

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
| [aws_db_subnet_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Whether to create this resource or not? | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | The description of the DB parameter group. Defaults to "Managed by Terraform" | `string` | `"Managed by Terraform"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the DB parameter group. If omitted, Terraform will assign a random, unique name | `string` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | A list of VPC subnet IDs | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource | `map(string)` | `{}` | no |
| <a name="input_use_name_prefix"></a> [use\_name\_prefix](#input\_use\_name\_prefix) | Determines whether to use `name` as is or create a unique name beginning with `name` as the specified prefix | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN of the db subnet group |
| <a name="output_id"></a> [id](#output\_id) | The db subnet group name |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->