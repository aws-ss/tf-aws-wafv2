resource "aws_wafv2_web_acl_association" "this" {
  count = var.policy == null ? 0 : length(var.policy)

  resource_arn = var.resource_arn[count.index]
  web_acl_arn  = var.web_acl_arn[count.index]
}