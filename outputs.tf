output "stream_analytics_output_eventhubs" {
  description = "All stream_analytics_output_eventhub resources"
  value       = azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs
  sensitive   = true
}
output "stream_analytics_output_eventhubs_authentication_mode" {
  description = "List of authentication_mode values across all stream_analytics_output_eventhubs"
  value       = [for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : v.authentication_mode]
}
output "stream_analytics_output_eventhubs_eventhub_name" {
  description = "List of eventhub_name values across all stream_analytics_output_eventhubs"
  value       = [for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : v.eventhub_name]
}
output "stream_analytics_output_eventhubs_name" {
  description = "List of name values across all stream_analytics_output_eventhubs"
  value       = [for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : v.name]
}
output "stream_analytics_output_eventhubs_partition_key" {
  description = "List of partition_key values across all stream_analytics_output_eventhubs"
  value       = [for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : v.partition_key]
}
output "stream_analytics_output_eventhubs_property_columns" {
  description = "List of property_columns values across all stream_analytics_output_eventhubs"
  value       = [for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : v.property_columns]
}
output "stream_analytics_output_eventhubs_resource_group_name" {
  description = "List of resource_group_name values across all stream_analytics_output_eventhubs"
  value       = [for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : v.resource_group_name]
}
output "stream_analytics_output_eventhubs_serialization" {
  description = "List of serialization values across all stream_analytics_output_eventhubs"
  value       = [for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : v.serialization]
}
output "stream_analytics_output_eventhubs_servicebus_namespace" {
  description = "List of servicebus_namespace values across all stream_analytics_output_eventhubs"
  value       = [for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : v.servicebus_namespace]
}
output "stream_analytics_output_eventhubs_shared_access_policy_key" {
  description = "List of shared_access_policy_key values across all stream_analytics_output_eventhubs"
  value       = [for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : v.shared_access_policy_key]
  sensitive   = true
}
output "stream_analytics_output_eventhubs_shared_access_policy_name" {
  description = "List of shared_access_policy_name values across all stream_analytics_output_eventhubs"
  value       = [for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : v.shared_access_policy_name]
}
output "stream_analytics_output_eventhubs_stream_analytics_job_name" {
  description = "List of stream_analytics_job_name values across all stream_analytics_output_eventhubs"
  value       = [for k, v in azurerm_stream_analytics_output_eventhub.stream_analytics_output_eventhubs : v.stream_analytics_job_name]
}

