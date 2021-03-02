output "arn" {
  value       = aws_iam_role.shiftright_iam_role.arn
  description = "IAM Role ARN"
}

output "external_id" {
  value       = var.shiftright_external_id
  description = "The External ID configured into the IAM role"
}