resource "oci_cloud_bridge_asset_source" "cloud_bridge_asset_sources" {
  for_each = var.cloud_bridge_asset_sources

  assets_compartment_id            = each.value.assets_compartment_id
  compartment_id                   = each.value.compartment_id
  environment_id                   = each.value.environment_id
  inventory_id                     = each.value.inventory_id
  type                             = each.value.type
  are_historical_metrics_collected = each.value.are_historical_metrics_collected
  are_realtime_metrics_collected   = each.value.are_realtime_metrics_collected
  aws_account_key                  = each.value.aws_account_key
  aws_region                       = each.value.aws_region
  defined_tags                     = each.value.defined_tags
  discovery_schedule_id            = each.value.discovery_schedule_id
  display_name                     = each.value.display_name
  environment_type                 = each.value.environment_type
  freeform_tags                    = each.value.freeform_tags
  is_cost_information_collected    = each.value.is_cost_information_collected
  olvm_endpoint                    = each.value.olvm_endpoint
  system_tags                      = each.value.system_tags
  vcenter_endpoint                 = each.value.vcenter_endpoint

  discovery_credentials {
    secret_id = each.value.discovery_credentials.secret_id
    type      = each.value.discovery_credentials.type
  }

  dynamic "replication_credentials" {
    for_each = each.value.replication_credentials != null ? [each.value.replication_credentials] : []
    content {
      secret_id = replication_credentials.value.secret_id
      type      = replication_credentials.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

