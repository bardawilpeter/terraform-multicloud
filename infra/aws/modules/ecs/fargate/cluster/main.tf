terraform {
  required_version = ">= 0.12"
}

resource "aws_ecs_cluster" "this" {
  name = "${var.name_prefix}-cluster"
}
