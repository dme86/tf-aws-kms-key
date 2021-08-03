### terraform kms-key module

Provides a KMS single-Region customer master key (CMK).

## Example for main.tf

```hcl
module "kms-key" {
  source                  = "github.com/dme86/tf-aws-kms-key?ref=v0.1"
  kms_key_del_window      = "11"
  tags                    = {
    Name                  = "KMS"
    Foo                   = "Bar"
  }
}
```

## Attributes
|Attribute|Description|Default|
|--|--|--|
|description|(Optional) The description of the key as viewed in AWS console.|Parameter Store KMS master key|
|key_usage|(Optional) Specifies the intended use of the key. Valid values: ENCRYPT_DECRYPT or SIGN_VERIFY.|ENCRYPT_DECRYPT|
|customer_master_key_spec|(Optional) Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports. Valid values: SYMMETRIC_DEFAULT, RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521, or ECC_SECG_P256K1.|SYMMETRIC_DEFAULT|
|policy|(Optional) A valid policy JSON document. Although this is a key policy, not an IAM policy, an aws_iam_policy_document, in the form that designates a principal, can be used.|0|
|deletion_window_in_days|(Optional) Duration in days after which the key is deleted after destruction of the resource, must be between 7 and 30 days.|10|
|is_enabled|(Optional) Specifies whether the key is enabled.|true|
|enable_key_rotation|(Optional) Specifies whether key rotation is enabled.|false|

## More

Check out my other [terraform-aws-modules](https://github.com/dme86?tab=repositories&q=tf-aws)

## Contact

[Linkedin](https://www.linkedin.com/in/dmeier86/)
