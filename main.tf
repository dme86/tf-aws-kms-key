resource "aws_kms_key" "this" {
  description              = var.kms_key_description
  deletion_window_in_days  = var.kms_key_del_window
  key_usage                = var.kms_key_usage
  customer_master_key_spec = var.kms_key_spec
  policy                   = var.kms_key_policy
  is_enabled               = var.kms_key_is_enabled
  enable_key_rotation      = var.kms_key_rotation
  tags                     = var.tags
}
