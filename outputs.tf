output "mysql_flexible_server_firewall_rules_end_ip_address" {
  description = "Map of end_ip_address values across all mysql_flexible_server_firewall_rules, keyed the same as var.mysql_flexible_server_firewall_rules"
  value       = { for k, v in azurerm_mysql_flexible_server_firewall_rule.mysql_flexible_server_firewall_rules : k => v.end_ip_address }
}
output "mysql_flexible_server_firewall_rules_name" {
  description = "Map of name values across all mysql_flexible_server_firewall_rules, keyed the same as var.mysql_flexible_server_firewall_rules"
  value       = { for k, v in azurerm_mysql_flexible_server_firewall_rule.mysql_flexible_server_firewall_rules : k => v.name }
}
output "mysql_flexible_server_firewall_rules_resource_group_name" {
  description = "Map of resource_group_name values across all mysql_flexible_server_firewall_rules, keyed the same as var.mysql_flexible_server_firewall_rules"
  value       = { for k, v in azurerm_mysql_flexible_server_firewall_rule.mysql_flexible_server_firewall_rules : k => v.resource_group_name }
}
output "mysql_flexible_server_firewall_rules_server_name" {
  description = "Map of server_name values across all mysql_flexible_server_firewall_rules, keyed the same as var.mysql_flexible_server_firewall_rules"
  value       = { for k, v in azurerm_mysql_flexible_server_firewall_rule.mysql_flexible_server_firewall_rules : k => v.server_name }
}
output "mysql_flexible_server_firewall_rules_start_ip_address" {
  description = "Map of start_ip_address values across all mysql_flexible_server_firewall_rules, keyed the same as var.mysql_flexible_server_firewall_rules"
  value       = { for k, v in azurerm_mysql_flexible_server_firewall_rule.mysql_flexible_server_firewall_rules : k => v.start_ip_address }
}

