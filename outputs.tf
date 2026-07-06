output "mysql_flexible_server_firewall_rules" {
  description = "All mysql_flexible_server_firewall_rule resources"
  value       = azurerm_mysql_flexible_server_firewall_rule.mysql_flexible_server_firewall_rules
}
output "mysql_flexible_server_firewall_rules_end_ip_address" {
  description = "List of end_ip_address values across all mysql_flexible_server_firewall_rules"
  value       = [for k, v in azurerm_mysql_flexible_server_firewall_rule.mysql_flexible_server_firewall_rules : v.end_ip_address]
}
output "mysql_flexible_server_firewall_rules_name" {
  description = "List of name values across all mysql_flexible_server_firewall_rules"
  value       = [for k, v in azurerm_mysql_flexible_server_firewall_rule.mysql_flexible_server_firewall_rules : v.name]
}
output "mysql_flexible_server_firewall_rules_resource_group_name" {
  description = "List of resource_group_name values across all mysql_flexible_server_firewall_rules"
  value       = [for k, v in azurerm_mysql_flexible_server_firewall_rule.mysql_flexible_server_firewall_rules : v.resource_group_name]
}
output "mysql_flexible_server_firewall_rules_server_name" {
  description = "List of server_name values across all mysql_flexible_server_firewall_rules"
  value       = [for k, v in azurerm_mysql_flexible_server_firewall_rule.mysql_flexible_server_firewall_rules : v.server_name]
}
output "mysql_flexible_server_firewall_rules_start_ip_address" {
  description = "List of start_ip_address values across all mysql_flexible_server_firewall_rules"
  value       = [for k, v in azurerm_mysql_flexible_server_firewall_rule.mysql_flexible_server_firewall_rules : v.start_ip_address]
}

