output "stream_analytics_output_eventhubs_id" {
  description = "Map of id values across all stream_analytics_output_eventhubs, keyed the same as var.stream_analytics_output_eventhubs"
  value       = { for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : k => v.id }
}
output "stream_analytics_output_eventhubs_authentication_mode" {
  description = "Map of authentication_mode values across all stream_analytics_output_eventhubs, keyed the same as var.stream_analytics_output_eventhubs"
  value       = { for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : k => v.authentication_mode }
}
output "stream_analytics_output_eventhubs_eventhub_name" {
  description = "Map of eventhub_name values across all stream_analytics_output_eventhubs, keyed the same as var.stream_analytics_output_eventhubs"
  value       = { for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : k => v.eventhub_name }
}
output "stream_analytics_output_eventhubs_name" {
  description = "Map of name values across all stream_analytics_output_eventhubs, keyed the same as var.stream_analytics_output_eventhubs"
  value       = { for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : k => v.name }
}
output "stream_analytics_output_eventhubs_partition_key" {
  description = "Map of partition_key values across all stream_analytics_output_eventhubs, keyed the same as var.stream_analytics_output_eventhubs"
  value       = { for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : k => v.partition_key }
}
output "stream_analytics_output_eventhubs_property_columns" {
  description = "Map of property_columns values across all stream_analytics_output_eventhubs, keyed the same as var.stream_analytics_output_eventhubs"
  value       = { for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : k => v.property_columns }
}
output "stream_analytics_output_eventhubs_resource_group_name" {
  description = "Map of resource_group_name values across all stream_analytics_output_eventhubs, keyed the same as var.stream_analytics_output_eventhubs"
  value       = { for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : k => v.resource_group_name }
}
output "stream_analytics_output_eventhubs_serialization" {
  description = "Map of serialization values across all stream_analytics_output_eventhubs, keyed the same as var.stream_analytics_output_eventhubs"
  value       = { for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : k => v.serialization }
}
output "stream_analytics_output_eventhubs_servicebus_namespace" {
  description = "Map of servicebus_namespace values across all stream_analytics_output_eventhubs, keyed the same as var.stream_analytics_output_eventhubs"
  value       = { for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : k => v.servicebus_namespace }
}
output "stream_analytics_output_eventhubs_shared_access_policy_key" {
  description = "Map of shared_access_policy_key values across all stream_analytics_output_eventhubs, keyed the same as var.stream_analytics_output_eventhubs"
  value       = { for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : k => v.shared_access_policy_key }
  sensitive   = true
}
output "stream_analytics_output_eventhubs_shared_access_policy_name" {
  description = "Map of shared_access_policy_name values across all stream_analytics_output_eventhubs, keyed the same as var.stream_analytics_output_eventhubs"
  value       = { for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : k => v.shared_access_policy_name }
}
output "stream_analytics_output_eventhubs_stream_analytics_job_name" {
  description = "Map of stream_analytics_job_name values across all stream_analytics_output_eventhubs, keyed the same as var.stream_analytics_output_eventhubs"
  value       = { for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : k => v.stream_analytics_job_name }
}

