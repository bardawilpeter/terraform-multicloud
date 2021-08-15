output "ecs_cluster_id" {
  description = "The cluster id"
  value = aws_ecs_cluster.this.id
}

output "ecs_cluster_arn" {
  description = "The AWS ARN of ECS cluster"
  value = aws_ecs_cluster.this.arn
}

output "ecs_cluster_name" {
  description = "The ECS cluster"
  value       = var.name_prefix
}
