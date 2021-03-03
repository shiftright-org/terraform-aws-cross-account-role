variable "iam_role_name" {
  type        = string
  default     = "shiftright_iam_role"
  description = "The IAM role name"
}

variable "shiftright_aws_account_id" {
  type        = string
  description = "The ShiftRight AWS account that the IAM role will grant access"
  default     = "328992291952"
}

variable "tags" {
  type        = map(string)
  description = "A map/dictionary of Tags to be assigned to created resources"
  default     = {}
}

variable "shiftright_external_id" {
  type        = string
  description = "External Id that will be used in request to assume role"
}

variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "aws_profile" {
  type        = string
  description = "AWS account profile"
}