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
  # --- Unconfirmed validation candidates, derived from azurerm_mysql_flexible_server_firewall_rule's provider source ---
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
  # path: server_name
  #   source:    [from validate.FlexibleServerName] !ok
  # path: server_name
  #   condition: length(value) >= 3
  #   message:   [from validate.FlexibleServerName: invalid when len(value) < 3]
  #   source:    [from validate.FlexibleServerName: invalid when len(value) < 3]
  # path: server_name
  #   condition: length(value) <= 63
  #   message:   [from validate.FlexibleServerName: invalid when len(value) > 63]
  #   source:    [from validate.FlexibleServerName: invalid when len(value) > 63]
  # path: server_name
  #   source:    [from validate.FlexibleServerName] !regexp.MustCompile(`^[a-z0-9]([a-z0-9-]+[a-z0-9])?$`).MatchString(v)
  # path: start_ip_address
  #   source:    [from azValidate.IPv4Address] !ok
  # path: start_ip_address
  #   source:    [from azValidate.IPv4Address] four == nil
  # path: end_ip_address
  #   source:    [from azValidate.IPv4Address] !ok
  # path: end_ip_address
  #   source:    [from azValidate.IPv4Address] four == nil
}

