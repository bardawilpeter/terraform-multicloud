provider "aws" {
  version = "~> 3.0"
  region  = "us-east-1"
}

terraform {
  required_version = ">= 0.12, < 0.13"

  backend "s3" {
    bucket         = "multi-cloud-project-state"
    key            = "networking/cluster.tfstate"
    dynamodb_table = "multi-cloud-project-state-lock"
    region         = "us-east-1"
    encrypt        = true
  }
}

locals {
  prefix = "web-app"
}

module "ecs_cluster" {
  source       = "../../modules/ecs/fargate/cluster"
  name_prefix  = "${local.prefix}"
}
