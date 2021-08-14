output "service_id" {
  description = "The Amazon ARN of the service"
  value       = aws_ecs_service.this.id
}

output "service_name" {
  description = "The service name"
  value       = aws_ecs_service.this.name
}

output "service_cluster" {
  description = "The AWS ARN of the cluster"
  value       = aws_ecs_service.this.cluster
}

output "service_desired_count" {
  description = "The current number of service desired count"
  value       = aws_ecs_service.this.desired_count
}
