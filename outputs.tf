output "dlm_arn" {
  description = "ARN of DLM Policy"
  value       = "aws_dlm_lifecycle_policy.main.arn"
  sensitive   = true

}

output "dlm_id" {
  description = "ID of DLM Policy"
  value       = "aws_dlm_lifecycle_policy.main.id"
  sensitive   = true
}
