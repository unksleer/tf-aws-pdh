# output "aws_iam_user" {
#   value = aws_iam_user.aac_iam
# }

output "iam_user_name" {
  description = "Name of the created IAM user"
  value       = aws_iam_user.aac_iam.name
}

output "iam_policy_name" {
  description = "Name of the created IAM policy"
  value       = aws_iam_policy.aac_mgmt_policy.name
}

output "iam_policy_arn" {
  description = "ARN of the created IAM policy"
  value       = aws_iam_policy.aac_mgmt_policy.arn
}
