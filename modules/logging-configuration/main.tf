resource "aws_wafv2_web_acl_logging_configuration" "this" {
  log_destination_configs = [var.log_destination_configs[count.index]]
  resource_arn = var.resource_arn

  dynamic "logging_filter" {
    for_each = [var.logging_filter[count.index]]
    content {
      default_behavior = lookup(logging_filter.value, "default_behavior")
      filter {
        behavior    = lookup(logging_filter.value, "behavior")
        requirement = lookup(logging_filter.value, "requirement")
        condition {

        }
      }
    }
  }
}