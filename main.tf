data "confluent_gateways" "gateways_lookup" {
  for_each = var.gateways_lookup


  environment {
    id = each.value.environment.id
  }

  dynamic "filter" {
    for_each = each.value.filter != null ? [each.value.filter] : []
    content {
      display_name = filter.value.display_name
      gateway_type = filter.value.gateway_type
      id           = filter.value.id
      phase        = filter.value.phase
      region       = filter.value.region
    }
  }
}

