terraform {
  required_version = ">= 0.12, < 0.13"
}

provider "aws" {
  region = "us-east-1"
  version = "~> 3.0"
}

resource "aws_s3_bucket" "terraform_backend" {
  bucket = var.backend_bucket_name
  acl = "private"
}

resource "aws_dynamodb_table" "terraform_backend_state_locks" {
  name = var.backend_lock_table_name
  hash_key = "LockID"
  read_capacity = var.dynamodb_read_capacity
  write_capacity = var.dynamodb_write_capacity
 
  attribute {
    name = "LockID"
    type = "S"
  }
}