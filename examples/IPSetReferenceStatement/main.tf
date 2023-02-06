locals {
  config_vars = yamldecode(file("config.yaml"))
}

module "wafv2" {
  source = "../..//"

  policy            = local.config_vars.policy
  name              = local.config_vars.policy[*].name
  description       = local.config_vars.policy[*].description
  scope             = local.config_vars.policy[*].scope
  default_action    = local.config_vars.policy[*].default_action
  rule              = local.config_vars.policy[*].rule
  visibility_config = local.config_vars.policy[*].visibility_config
  tags              = local.config_vars.policy[*].tags
}