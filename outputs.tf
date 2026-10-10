output "datasync_tasks_id" {
  description = "Map of id values across all datasync_tasks, keyed the same as var.datasync_tasks"
  value       = { for k, v in aws_datasync_task.datasync_tasks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "datasync_tasks_arn" {
  description = "Map of arn values across all datasync_tasks, keyed the same as var.datasync_tasks"
  value       = { for k, v in aws_datasync_task.datasync_tasks : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "datasync_tasks_cloudwatch_log_group_arn" {
  description = "Map of cloudwatch_log_group_arn values across all datasync_tasks, keyed the same as var.datasync_tasks"
  value       = { for k, v in aws_datasync_task.datasync_tasks : k => v.cloudwatch_log_group_arn if v.cloudwatch_log_group_arn != null && length(v.cloudwatch_log_group_arn) > 0 }
}
output "datasync_tasks_destination_location_arn" {
  description = "Map of destination_location_arn values across all datasync_tasks, keyed the same as var.datasync_tasks"
  value       = { for k, v in aws_datasync_task.datasync_tasks : k => v.destination_location_arn if v.destination_location_arn != null && length(v.destination_location_arn) > 0 }
}
output "datasync_tasks_excludes" {
  description = "Map of excludes values across all datasync_tasks, keyed the same as var.datasync_tasks"
  value       = { for k, v in aws_datasync_task.datasync_tasks : k => one(v.excludes) if v.excludes != null && length(v.excludes) > 0 }
}
output "datasync_tasks_includes" {
  description = "Map of includes values across all datasync_tasks, keyed the same as var.datasync_tasks"
  value       = { for k, v in aws_datasync_task.datasync_tasks : k => one(v.includes) if v.includes != null && length(v.includes) > 0 }
}
output "datasync_tasks_name" {
  description = "Map of name values across all datasync_tasks, keyed the same as var.datasync_tasks"
  value       = { for k, v in aws_datasync_task.datasync_tasks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "datasync_tasks_options" {
  description = "Map of options values across all datasync_tasks, keyed the same as var.datasync_tasks"
  value       = { for k, v in aws_datasync_task.datasync_tasks : k => one(v.options) if v.options != null && length(v.options) > 0 }
}
output "datasync_tasks_region" {
  description = "Map of region values across all datasync_tasks, keyed the same as var.datasync_tasks"
  value       = { for k, v in aws_datasync_task.datasync_tasks : k => v.region if v.region != null && length(v.region) > 0 }
}
output "datasync_tasks_schedule" {
  description = "Map of schedule values across all datasync_tasks, keyed the same as var.datasync_tasks"
  value       = { for k, v in aws_datasync_task.datasync_tasks : k => one(v.schedule) if v.schedule != null && length(v.schedule) > 0 }
}
output "datasync_tasks_source_location_arn" {
  description = "Map of source_location_arn values across all datasync_tasks, keyed the same as var.datasync_tasks"
  value       = { for k, v in aws_datasync_task.datasync_tasks : k => v.source_location_arn if v.source_location_arn != null && length(v.source_location_arn) > 0 }
}
output "datasync_tasks_tags" {
  description = "Map of tags values across all datasync_tasks, keyed the same as var.datasync_tasks"
  value       = { for k, v in aws_datasync_task.datasync_tasks : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "datasync_tasks_tags_all" {
  description = "Map of tags_all values across all datasync_tasks, keyed the same as var.datasync_tasks"
  value       = { for k, v in aws_datasync_task.datasync_tasks : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "datasync_tasks_task_mode" {
  description = "Map of task_mode values across all datasync_tasks, keyed the same as var.datasync_tasks"
  value       = { for k, v in aws_datasync_task.datasync_tasks : k => v.task_mode if v.task_mode != null && length(v.task_mode) > 0 }
}
output "datasync_tasks_task_report_config" {
  description = "Map of task_report_config values across all datasync_tasks, keyed the same as var.datasync_tasks"
  value       = { for k, v in aws_datasync_task.datasync_tasks : k => one(v.task_report_config) if v.task_report_config != null && length(v.task_report_config) > 0 }
}

