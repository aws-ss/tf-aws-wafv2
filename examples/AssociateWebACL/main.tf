locals {
  config_vars = yamldecode(file("config.yaml"))
}

module "wafv2" {
  source = "../..//modules/web-acl-associate"

  policy            = local.config_vars.policy
  resource_arn      = local.config_vars.policy[*].resource_arn
  web_acl_arn       = local.config_vars.policy[*].web_acl_arn
}