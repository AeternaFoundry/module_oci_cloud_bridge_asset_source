variable "cloud_bridge_asset_sources" {
  description = <<EOT
Map of cloud_bridge_asset_sources, attributes below
Required:
    - assets_compartment_id
    - compartment_id
    - environment_id
    - inventory_id
    - type
    - discovery_credentials (block):
        - secret_id (required)
        - type (required)
Optional:
    - are_historical_metrics_collected
    - are_realtime_metrics_collected
    - aws_account_key
    - aws_region
    - defined_tags
    - discovery_schedule_id
    - display_name
    - environment_type
    - freeform_tags
    - is_cost_information_collected
    - olvm_endpoint
    - system_tags
    - vcenter_endpoint
    - replication_credentials (block):
        - secret_id (required)
        - type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    assets_compartment_id            = string
    compartment_id                   = string
    environment_id                   = string
    inventory_id                     = string
    type                             = string
    are_historical_metrics_collected = optional(bool)
    are_realtime_metrics_collected   = optional(bool)
    aws_account_key                  = optional(string)
    aws_region                       = optional(string)
    defined_tags                     = optional(map(string))
    discovery_schedule_id            = optional(string)
    display_name                     = optional(string)
    environment_type                 = optional(string)
    freeform_tags                    = optional(map(string))
    is_cost_information_collected    = optional(bool)
    olvm_endpoint                    = optional(string)
    system_tags                      = optional(map(string))
    vcenter_endpoint                 = optional(string)
    discovery_credentials = object({
      secret_id = string
      type      = string
    })
    replication_credentials = optional(object({
      secret_id = string
      type      = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloud_bridge_asset_sources : (
        contains([for v in ["AWS", "OLVM", "VMWARE"] : lower(v)], lower(v.type))
      )
    ])
    error_message = "must be one of: \"AWS\", \"OLVM\", \"VMWARE\""
  }
}

