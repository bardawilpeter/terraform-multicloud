variable "backend_bucket_name" {
  description = "s3 bucket name for storing terraform remote state"
  default     = "multi-cloud-project-state"
}

variable "backend_lock_table_name" {
  description = "DynamoDB table name for terraform state locks"
  default     = "multi-cloud-project-state-lock"
}

variable "dynamodb_read_capacity" {
  description = "DynamoDB table name for terraform state locks"
  default     = 20
}

variable "dynamodb_write_capacity" {
  description = "DynamoDB table name for terraform state locks"
  default     = 20
}
