output "dlm_arn" {
  type        = string
  sensitive   = true
  description = "ARN of DLM Policy"
  value       = "aws_dlm_lifecycle_policy.main.arn"

}

output "dlm_id" {
  type        = string
  sensitive   = true
  description = "ID of DLM Policy"
  value       = "aws_dlm_lifecycle_policy.main.id"
}
