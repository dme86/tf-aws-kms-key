variable "tags" {}

variable "kms_key_description" {
  type        = string
  default     = "Parameter Store KMS master key"
}

variable "kms_key_del_window" {
  type        = number
  default     = 10
  description = "Duration in days after which the key is deleted after destruction of the resource"
}

variable "kms_key_usage" {
  type        = string
  default     = "ENCRYPT_DECRYPT"
  description = "Specifies the intended use of the key"
}

variable "kms_key_spec" {
  type        = string
  default     = "SYMMETRIC_DEFAULT"
  description = "Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports"
}

variable "kms_key_policy" {
  type        = string
  default     = ""
  description = "A valid KMS policy JSON document. Note that if the policy document is not specific enough (but still valid), Terraform may view the policy as constantly changing in a terraform plan. In this case, please make sure you use the verbose/specific version of the policy"
}

variable "kms_key_is_enabled" {
  type        = bool
  default     = true
  description = "Specifies whether the key is enabled"
}

variable "kms_key_rotation" {
  type        = bool
  default     = false
  description = "Specifies whether key rotation is enabled"
}
