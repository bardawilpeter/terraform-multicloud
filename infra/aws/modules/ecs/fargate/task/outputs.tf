output "task_arn" {
  description = "AWS ARN for the created task"
  value       = aws_ecs_task_definition.this.arn
}

output "task_family_name" {
  description = "Family name of the created task"
  value       = aws_ecs_task_definition.this.family
}