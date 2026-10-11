output "gateways_lookup_id" {
  description = "Map of id values across all gateways_lookup, keyed the same as var.gateways_lookup except keys with no id are omitted"
  value       = { for k, v in data.confluent_gateways.gateways_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "gateways_lookup_environment" {
  description = "Map of environment values across all gateways_lookup, keyed the same as var.gateways_lookup except keys with no environment are omitted"
  value       = { for k, v in data.confluent_gateways.gateways_lookup : k => one(v.environment) if v.environment != null && length(v.environment) > 0 }
}
output "gateways_lookup_filter" {
  description = "Map of filter values across all gateways_lookup, keyed the same as var.gateways_lookup except keys with no filter are omitted"
  value       = { for k, v in data.confluent_gateways.gateways_lookup : k => one(v.filter) if v.filter != null && length(v.filter) > 0 }
}
output "gateways_lookup_gateways" {
  description = "Map of gateways values across all gateways_lookup, keyed the same as var.gateways_lookup except keys with no gateways are omitted"
  value       = { for k, v in data.confluent_gateways.gateways_lookup : k => v.gateways if v.gateways != null && length(v.gateways) > 0 }
}

