variable "apps_dashboard_dashboard_v2beta1s" {
  description = <<EOT
Map of apps_dashboard_dashboard_v2beta1s, attributes below
Optional:
    - metadata (block):
        - folder_uid (optional)
        - uid (required)
    - options (block):
        - allow_ui_updates (optional)
        - manager_identity (optional)
        - overwrite (optional)
    - spec (block):
        - json (required)
        - tags (optional)
        - title (optional)
EOT

  type = map(object({
    metadata = optional(list(object({
      folder_uid = optional(string)
      uid        = string
    })))
    options = optional(list(object({
      allow_ui_updates = optional(bool)
      manager_identity = optional(string)
      overwrite        = optional(bool)
    })))
    spec = optional(list(object({
      json  = string
      tags  = optional(list(string))
      title = optional(string)
    })))
  }))
}

