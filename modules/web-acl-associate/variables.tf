variable "policy" {
  description = "(Required) A IPsets policy to create."
  type        = list(any)
  default     = null
}

variable "resource_arn" {
  description = " (Required) The Amazon Resource Name (ARN) of the resource to associate with the web ACL."
  type        = list(string)
}

variable "web_acl_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the Web ACL that you want to associate with the resource."
  type        = list(string)
}