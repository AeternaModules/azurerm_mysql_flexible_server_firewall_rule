variable "mysql_flexible_server_firewall_rules" {
  description = <<EOT
Map of mysql_flexible_server_firewall_rules, attributes below
Required:
    - end_ip_address
    - name
    - resource_group_name
    - server_name
    - start_ip_address
EOT

  type = map(object({
    end_ip_address      = string
    name                = string
    resource_group_name = string
    server_name         = string
    start_ip_address    = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_server_firewall_rules : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_server_firewall_rules : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_server_firewall_rules : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_server_firewall_rules : (
        length(v.server_name) >= 3
      )
    ])
    error_message = "[from validate.FlexibleServerName: invalid when len(value) < 3]"
  }
  validation {
    condition = alltrue([
      for k, v in var.mysql_flexible_server_firewall_rules : (
        length(v.server_name) <= 63
      )
    ])
    error_message = "[from validate.FlexibleServerName: invalid when len(value) > 63]"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

