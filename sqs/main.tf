module "sqs" {
  source  = "terraform-aws-modules/sqs/aws"
  version = "3.1.0"

  name_sqs                    = "brk-geocoding"
  visibility_timeout_seconds  = 30
  delay_seconds               = 0
  max_message_size            = 262144
  message_retention_seconds   = 345600
  receive_wait_time_seconds   = 0
  fifo_queue                  = false
  content_based_deduplication = false
  environment                 = var.environment
}
