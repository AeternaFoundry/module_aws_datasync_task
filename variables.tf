variable "datasync_tasks" {
  description = <<EOT
Map of datasync_tasks, attributes below
Required:
    - destination_location_arn
    - source_location_arn
Optional:
    - cloudwatch_log_group_arn
    - name
    - region
    - tags
    - tags_all
    - task_mode
    - excludes (block):
        - filter_type (optional)
        - value (optional)
    - includes (block):
        - filter_type (optional)
        - value (optional)
    - options (block):
        - atime (optional)
        - bytes_per_second (optional)
        - gid (optional)
        - log_level (optional)
        - mtime (optional)
        - object_tags (optional)
        - overwrite_mode (optional)
        - posix_permissions (optional)
        - preserve_deleted_files (optional)
        - preserve_devices (optional)
        - security_descriptor_copy_flags (optional)
        - task_queueing (optional)
        - transfer_mode (optional)
        - uid (optional)
        - verify_mode (optional)
    - schedule (block):
        - schedule_expression (required)
        - status (optional)
    - task_report_config (block):
        - output_type (optional)
        - report_level (optional)
        - report_overrides (optional, block):
            - deleted_override (optional)
            - skipped_override (optional)
            - transferred_override (optional)
            - verified_override (optional)
        - s3_destination (required, block):
            - bucket_access_role_arn (required)
            - s3_bucket_arn (required)
            - subdirectory (optional)
        - s3_object_versioning (optional)
EOT

  type = map(object({
    destination_location_arn = string
    source_location_arn      = string
    cloudwatch_log_group_arn = optional(string)
    name                     = optional(string)
    region                   = optional(string)
    tags                     = optional(map(string))
    tags_all                 = optional(map(string))
    task_mode                = optional(string)
    excludes = optional(object({
      filter_type = optional(string)
      value       = optional(string)
    }))
    includes = optional(object({
      filter_type = optional(string)
      value       = optional(string)
    }))
    options = optional(object({
      atime                          = optional(string)
      bytes_per_second               = optional(number)
      gid                            = optional(string)
      log_level                      = optional(string)
      mtime                          = optional(string)
      object_tags                    = optional(string)
      overwrite_mode                 = optional(string)
      posix_permissions              = optional(string)
      preserve_deleted_files         = optional(string)
      preserve_devices               = optional(string)
      security_descriptor_copy_flags = optional(string)
      task_queueing                  = optional(string)
      transfer_mode                  = optional(string)
      uid                            = optional(string)
      verify_mode                    = optional(string)
    }))
    schedule = optional(object({
      schedule_expression = string
      status              = optional(string)
    }))
    task_report_config = optional(object({
      output_type  = optional(string)
      report_level = optional(string)
      report_overrides = optional(object({
        deleted_override     = optional(string)
        skipped_override     = optional(string)
        transferred_override = optional(string)
        verified_override    = optional(string)
      }))
      s3_destination = object({
        bucket_access_role_arn = string
        s3_bucket_arn          = string
        subdirectory           = optional(string)
      })
      s3_object_versioning = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.datasync_tasks : (
        v.options == null || (v.options.bytes_per_second == null || (v.options.bytes_per_second >= -1))
      )
    ])
    error_message = "must be at least -1"
  }
  # Note: 31 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

