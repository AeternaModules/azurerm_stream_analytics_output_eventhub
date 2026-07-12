variable "stream_analytics_output_eventhubs" {
  description = <<EOT
Map of stream_analytics_output_eventhubs, attributes below
Required:
    - eventhub_name
    - name
    - resource_group_name
    - servicebus_namespace
    - stream_analytics_job_name
    - serialization (block):
        - encoding (optional)
        - field_delimiter (optional)
        - format (optional)
        - type (required)
Optional:
    - authentication_mode
    - partition_key
    - property_columns
    - shared_access_policy_key
    - shared_access_policy_key_key_vault_id (alternative to shared_access_policy_key - read from Key Vault instead)
    - shared_access_policy_key_key_vault_secret_name (alternative to shared_access_policy_key - read from Key Vault instead)
    - shared_access_policy_name
EOT

  type = map(object({
    eventhub_name                                  = string
    name                                           = string
    resource_group_name                            = string
    servicebus_namespace                           = string
    stream_analytics_job_name                      = string
    authentication_mode                            = optional(string) # Default: "ConnectionString"
    partition_key                                  = optional(string)
    property_columns                               = optional(list(string))
    shared_access_policy_key                       = optional(string)
    shared_access_policy_key_key_vault_id          = optional(string)
    shared_access_policy_key_key_vault_secret_name = optional(string)
    shared_access_policy_name                      = optional(string)
    serialization = object({
      encoding        = optional(string)
      field_delimiter = optional(string)
      format          = optional(string)
      type            = string
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_eventhubs : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_eventhubs : (
        length(v.stream_analytics_job_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_eventhubs : (
        length(v.eventhub_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_eventhubs : (
        length(v.servicebus_namespace) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_eventhubs : (
        v.shared_access_policy_key == null || (length(v.shared_access_policy_key) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_eventhubs : (
        v.shared_access_policy_name == null || (length(v.shared_access_policy_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_output_eventhubs : (
        v.property_columns == null || (length(v.property_columns) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_stream_analytics_output_eventhub's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: authentication_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

