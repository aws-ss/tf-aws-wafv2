resource "aws_wafv2_ip_set" "this" {
  count = var.policy == null ? 0 : length(var.policy)

  name               = var.name[count.index]
  description        = var.description[count.index]
  scope              = var.scope[count.index]
  ip_address_version = var.ip_address_version[count.index]
  addresses          = var.addresses[count.index]
  tags               = var.tags[count.index]
}