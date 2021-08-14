terraform {
  required_version = ">= 0.12"
}

resource "aws_ecs_task_definition" "this" {
  family                   = local.family_name
    
  cpu                      = var.task_cpu
  memory                   = var.task_memory

  task_role_arn            = aws_iam_role.ecs_task_execution.arn
  execution_role_arn       = aws_iam_role.ecs_task_execution.arn

  container_definitions    = var.container_definitions

  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
}

resource "aws_iam_role" "ecs_task_execution" {
  name               = format("%s-task-role", "${var.task_name}")
  path               = "/ecs/${var.task_name}"
  assume_role_policy = data.aws_iam_policy_document.ecs_assume_role_policy.json
}

data "aws_iam_policy_document" "ecs_assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ecs-tasks.amazonaws.com"]
    }
  }
}