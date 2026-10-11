output "cloud_bridge_asset_sources_id" {
  description = "Map of id values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no id are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_bridge_asset_sources_are_historical_metrics_collected" {
  description = "Map of are_historical_metrics_collected values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no are_historical_metrics_collected are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.are_historical_metrics_collected if v.are_historical_metrics_collected != null }
}
output "cloud_bridge_asset_sources_are_realtime_metrics_collected" {
  description = "Map of are_realtime_metrics_collected values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no are_realtime_metrics_collected are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.are_realtime_metrics_collected if v.are_realtime_metrics_collected != null }
}
output "cloud_bridge_asset_sources_assets_compartment_id" {
  description = "Map of assets_compartment_id values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no assets_compartment_id are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.assets_compartment_id if v.assets_compartment_id != null && length(v.assets_compartment_id) > 0 }
}
output "cloud_bridge_asset_sources_aws_account_key" {
  description = "Map of aws_account_key values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no aws_account_key are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.aws_account_key if v.aws_account_key != null && length(v.aws_account_key) > 0 }
}
output "cloud_bridge_asset_sources_aws_region" {
  description = "Map of aws_region values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no aws_region are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.aws_region if v.aws_region != null && length(v.aws_region) > 0 }
}
output "cloud_bridge_asset_sources_compartment_id" {
  description = "Map of compartment_id values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no compartment_id are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "cloud_bridge_asset_sources_defined_tags" {
  description = "Map of defined_tags values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no defined_tags are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "cloud_bridge_asset_sources_discovery_credentials" {
  description = "Map of discovery_credentials values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no discovery_credentials are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => one(v.discovery_credentials) if v.discovery_credentials != null && length(v.discovery_credentials) > 0 }
}
output "cloud_bridge_asset_sources_discovery_schedule_id" {
  description = "Map of discovery_schedule_id values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no discovery_schedule_id are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.discovery_schedule_id if v.discovery_schedule_id != null && length(v.discovery_schedule_id) > 0 }
}
output "cloud_bridge_asset_sources_display_name" {
  description = "Map of display_name values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no display_name are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "cloud_bridge_asset_sources_environment_id" {
  description = "Map of environment_id values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no environment_id are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.environment_id if v.environment_id != null && length(v.environment_id) > 0 }
}
output "cloud_bridge_asset_sources_environment_type" {
  description = "Map of environment_type values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no environment_type are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.environment_type if v.environment_type != null && length(v.environment_type) > 0 }
}
output "cloud_bridge_asset_sources_freeform_tags" {
  description = "Map of freeform_tags values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "cloud_bridge_asset_sources_inventory_id" {
  description = "Map of inventory_id values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no inventory_id are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.inventory_id if v.inventory_id != null && length(v.inventory_id) > 0 }
}
output "cloud_bridge_asset_sources_is_cost_information_collected" {
  description = "Map of is_cost_information_collected values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no is_cost_information_collected are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.is_cost_information_collected if v.is_cost_information_collected != null }
}
output "cloud_bridge_asset_sources_lifecycle_details" {
  description = "Map of lifecycle_details values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "cloud_bridge_asset_sources_olvm_endpoint" {
  description = "Map of olvm_endpoint values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no olvm_endpoint are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.olvm_endpoint if v.olvm_endpoint != null && length(v.olvm_endpoint) > 0 }
}
output "cloud_bridge_asset_sources_replication_credentials" {
  description = "Map of replication_credentials values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no replication_credentials are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => one(v.replication_credentials) if v.replication_credentials != null && length(v.replication_credentials) > 0 }
}
output "cloud_bridge_asset_sources_state" {
  description = "Map of state values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no state are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.state if v.state != null && length(v.state) > 0 }
}
output "cloud_bridge_asset_sources_system_tags" {
  description = "Map of system_tags values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no system_tags are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "cloud_bridge_asset_sources_time_created" {
  description = "Map of time_created values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no time_created are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "cloud_bridge_asset_sources_time_updated" {
  description = "Map of time_updated values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no time_updated are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "cloud_bridge_asset_sources_type" {
  description = "Map of type values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no type are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.type if v.type != null && length(v.type) > 0 }
}
output "cloud_bridge_asset_sources_vcenter_endpoint" {
  description = "Map of vcenter_endpoint values across all cloud_bridge_asset_sources, keyed the same as var.cloud_bridge_asset_sources except keys with no vcenter_endpoint are omitted"
  value       = { for k, v in oci_cloud_bridge_asset_source.cloud_bridge_asset_sources : k => v.vcenter_endpoint if v.vcenter_endpoint != null && length(v.vcenter_endpoint) > 0 }
}

