variable "project_custom_attributes" {
  description = <<EOT
Map of project_custom_attributes, attributes below
Required:
    - key
    - project
    - value
EOT

  type = map(object({
    key     = string
    project = number
    value   = string
  }))
}

