################################################################################
# AWS
variable "AWS_DEFAULT_REGION" {
  type        = string
  description = "AWS region in wich resources shall be created"
}

variable "AWS_SECRET_ACCESS_KEY" {
  type        = string
  description = "AWS access key"
}

variable "AWS_ACCESS_KEY_ID" {
  type        = string
  description = "AWS access key ID"
}

################################################################################
# Tags
################################################################################
variable "environment" {
  type        = string
  description = "Environment name to be appended on resources"
}

variable "application" {
  type        = string
  description = "Application name to identify resources"
}

################################################################################
# Bucket S3
variable "file_tag_bucket_name" {
  default = "brk-geocoding-file-tag"

}

