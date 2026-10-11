resource "gitlab_project_custom_attribute" "project_custom_attributes" {
  for_each = var.project_custom_attributes

  key     = each.value.key
  project = each.value.project
  value   = each.value.value
}

