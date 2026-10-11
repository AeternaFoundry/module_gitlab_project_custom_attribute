output "project_custom_attributes_id" {
  description = "Map of id values across all project_custom_attributes, keyed the same as var.project_custom_attributes except keys with no id are omitted"
  value       = { for k, v in gitlab_project_custom_attribute.project_custom_attributes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_custom_attributes_key" {
  description = "Map of key values across all project_custom_attributes, keyed the same as var.project_custom_attributes except keys with no key are omitted"
  value       = { for k, v in gitlab_project_custom_attribute.project_custom_attributes : k => v.key if v.key != null && length(v.key) > 0 }
}
output "project_custom_attributes_project" {
  description = "Map of project values across all project_custom_attributes, keyed the same as var.project_custom_attributes except keys with no project are omitted"
  value       = { for k, v in gitlab_project_custom_attribute.project_custom_attributes : k => v.project if v.project != null }
}
output "project_custom_attributes_value" {
  description = "Map of value values across all project_custom_attributes, keyed the same as var.project_custom_attributes except keys with no value are omitted"
  value       = { for k, v in gitlab_project_custom_attribute.project_custom_attributes : k => v.value if v.value != null && length(v.value) > 0 }
}

