output "kms_key_arn" {
  description = "The ARN of the kms-key"
  value       = aws_kms_key.this.arn
}

output "kms_key_id" {
  description = "The ID of the kms-key"
  value       = aws_kms_key.this.key_id
}
