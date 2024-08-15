variable "iam_user_name" {
  description = "Name of the IAM user"
  type        = string
  default     = "aac_automation_user"
}

variable "iam_policy_name" {
  description = "Name of the IAM policy"
  type        = string
  default     = "AAC_SA_POLICY"
}

variable "iam_policy_description" {
  description = "Description of the IAM policy"
  type        = string
  default     = "Grants access for AAC SA to configure resources for PDH"
}
