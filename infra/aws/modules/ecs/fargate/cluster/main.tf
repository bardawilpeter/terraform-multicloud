terraform {
  required_version = ">= 0.12, < 0.13"
}

resource "aws_ecs_cluster" "this" {
  name = "${var.name_prefix}-cluster"
}
