##########################################################################
### REQUIRED
##########################################################################
variable "name" {
  description = "The name of the DB parameter group. If omitted, Terraform will assign a random, unique name"
  type        = string
}

variable "subnet_ids" {
  description = "A list of VPC subnet IDs"
  type        = list(string)
}

##########################################################################
### OPTIONAL
##########################################################################
variable "create" {
  default     = true
  description = "Whether to create this resource or not?"
  type        = bool
}

variable "description" {
  default     = "Managed by Terraform"
  description = "The description of the DB parameter group. Defaults to \"Managed by Terraform\""
  type        = string
}

variable "tags" {
  default     = {}
  description = "A map of tags to assign to the resource"
  type        = map(string)
}

variable "use_name_prefix" {
  default     = true
  description = "Determines whether to use `name` as is or create a unique name beginning with `name` as the specified prefix"
  type        = bool
}
