variable "gateways_lookup" {
  description = <<EOT
Map of gateways_lookup, attributes below
Required:
    - environment (block):
        - id (required)
Optional:
    - filter (block):
        - display_name (optional)
        - gateway_type (optional)
        - id (optional)
        - phase (optional)
        - region (optional)
EOT

  type = map(object({
    environment = object({
      id = string
    })
    filter = optional(object({
      display_name = optional(list(string))
      gateway_type = optional(list(string))
      id           = optional(list(string))
      phase        = optional(list(string))
      region       = optional(list(string))
    }))
  }))
}

