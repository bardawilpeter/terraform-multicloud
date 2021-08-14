variable "service_name" {
  description = "Name of the ECS Service"
  type        = string
}

variable "cluster_id" {
  description = "Id of cluster hosting the service"
  type        = string
}

variable "task_definition_arn" {
  description = "AWS ARN of the task definition"
  type        = string
}

variable "desired_count" {
  description = "Desired instance count"
  type        = string
}

variable "lb_target_group_arn" {
  description = "Load balancer AWS ARN associated to this service"
  type        = string
}

variable "container_name" {
  description = "The container name"
  type        = string
}

variable "container_port" {
  description = "The container port"
  type        = string
}
