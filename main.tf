resource "grafana_apps_dashboard_dashboard_v2beta1" "apps_dashboard_dashboard_v2beta1s" {
  for_each = var.apps_dashboard_dashboard_v2beta1s


  dynamic "metadata" {
    for_each = each.value.metadata != null ? each.value.metadata : []
    content {
      folder_uid = metadata.value.folder_uid
      uid        = metadata.value.uid
    }
  }

  dynamic "options" {
    for_each = each.value.options != null ? each.value.options : []
    content {
      allow_ui_updates = options.value.allow_ui_updates
      manager_identity = options.value.manager_identity
      overwrite        = options.value.overwrite
    }
  }

  dynamic "spec" {
    for_each = each.value.spec != null ? each.value.spec : []
    content {
      json  = spec.value.json
      tags  = spec.value.tags
      title = spec.value.title
    }
  }
}

