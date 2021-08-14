variable "task_name" {
  description = "The Name of the task"
  type        = string
}

variable "task_cpu" {
  description = "The CPU number for the task"
}

variable "task_memory" {
  description = "The Number of Memory used"
}

variable "container_definitions" {
  description = "The container definition in JSON format"
}