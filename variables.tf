variable "subscription_id" {
  type        = string
  description = "Azure subscription ID, set via TF_VAR_subscription_id."
}
variable "location" {
  type    = string
  default = "westeurope"
}
variable "prefix" {
  type    = string
  default = "assetflow-dev"
}
