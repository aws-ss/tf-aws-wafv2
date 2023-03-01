locals {
  config_vars = yamldecode(file("config.yaml"))
}

module "wafv2" {
  source = "../../modules/logging-configuration//"

  policy                  = local.config_vars.policy
  log_destination_configs = local.config_vars.policy[*].log_destination_configs
  resource_arn            = local.config_vars.policy[*].resource_arn
  redacted_fields         = local.config_vars.policy[*].redacted_fields
  logging_filter          = local.config_vars.policy[*].logging_filter
}