variable "policy" {
  description = "(Required) CloudTrails policy to create."
  type        = any
  default     = null
}

variable "name" {
  description = "(Required) Friendly name of the WebACL."
  type        = list(string)
}

variable "description" {
  description = "(Optional) Friendly description of the WebACL."
  type        = list(string)
  default     = null
}

variable "scope" {
  description = "(Required) Specifies whether this is for an AWS CloudFront distribution or for a regional application"
  type        = list(string)
}

variable "default_action" {
  description = "(Required) Action to perform if none of the rules contained in the WebACL match."
  type        = list(string)
}

variable "visibility_config" {
  description = "(Required) Defines and enables Amazon CloudWatch metrics and web request sample collection."
  type        = list(map(string))
}

variable "rule" {
  description = "(Optional) Rule blocks used to identify the web requests that you want to allow, block, or count."
  type        = any
}

variable "tags" {
  description = "(Optional) Map of key-value pairs to associate with the resource."
  type        = list(map(string))
  default     = null
}