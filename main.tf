##############################################################
# Provider
##############################################################
provider "aws" {
  region  = "us-east-1"
}

locals {
  tags = {
    "App"         = var.application
    "Environment" = var.environment
  }
}

##############################################################
# IAM User
##############################################################
resource "aws_iam_user" "user" {
  name = "terraform-aws"
}

##############################################################
# Route 53 CNAME
##############################################################
# module "route53-resources" {
#   source                         = "./route53-resources"
#   website_cdn_hostname_resources = module.site-resources.website_cdn_hostname
#   domain                         = var.front_domain
#   providers = {
#     aws = aws.shared_account
#   }
# }

##############################################################
# S3 - File Tags
##############################################################
module "s3-documents" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "2.4.0"

  name = "${var.file_tag_bucket_name}-${var.environment}"
  acl  = "private"
  tags = local.tags
}

#############################################################
# SQS                                                       #
#############################################################
module "sqs" {
  source = "./sqs"
  environment = var.environment
}
