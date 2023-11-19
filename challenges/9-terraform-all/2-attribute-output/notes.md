# Files
```
resource "aws_s3_bucket" "s3_bucket" {
  bucket = "zero-size-bucket"
}

output "s3_buckets" {
  value = aws_s3_bucket.s3_bucket.arn
}

resource "aws_eip" "eip" {
  vpc = true
}

output "eip_" {
  value = aws_eip.eip.public_ip
}
```


$ terraform init
```
$ terraform init

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/aws from the dependency lock file
- Using previously-installed hashicorp/aws v4.67.0

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

$ terraform plan
```
$ terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # aws_eip.eip will be created
  + resource "aws_eip" "eip" {
      + allocation_id        = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = (known after apply)
      + id                   = (known after apply)
      + instance             = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + tags_all             = (known after apply)
      + vpc                  = true
    }

  # aws_s3_bucket.s3_bucket will be created
  + resource "aws_s3_bucket" "s3_bucket" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "zero-size-bucket"
      + bucket_domain_name          = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags_all                    = (known after apply)
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + eip_       = (known after apply)
  + s3_buckets = (known after apply)

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you
run "terraform apply" now.
```


$ terraform apply --auto-approve
```
$ terraform apply --auto-approve

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # aws_eip.eip will be created
  + resource "aws_eip" "eip" {
      + allocation_id        = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = (known after apply)
      + id                   = (known after apply)
      + instance             = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + tags_all             = (known after apply)
      + vpc                  = true
    }

  # aws_s3_bucket.s3_bucket will be created
  + resource "aws_s3_bucket" "s3_bucket" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "zero-size-bucket"
      + bucket_domain_name          = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags_all                    = (known after apply)
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + eip_       = (known after apply)
  + s3_buckets = (known after apply)
aws_eip.eip: Creating...
aws_s3_bucket.s3_bucket: Creating...
aws_eip.eip: Creation complete after 2s [id=eipalloc-03d5bb8b65581c7d9]
aws_s3_bucket.s3_bucket: Creation complete after 8s [id=zero-size-bucket]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

eip_ = "44.231.41.16"
s3_buckets = "arn:aws:s3:::zero-size-bucket"
```


$ terraform destroy --auto-approve
```
$ terraform destroy --auto-approve
aws_eip.eip: Refreshing state... [id=eipalloc-03d5bb8b65581c7d9]
aws_s3_bucket.s3_bucket: Refreshing state... [id=zero-size-bucket]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_eip.eip will be destroyed
  - resource "aws_eip" "eip" {
      - allocation_id        = "eipalloc-03d5bb8b65581c7d9" -> null
      - domain               = "vpc" -> null
      - id                   = "eipalloc-03d5bb8b65581c7d9" -> null
      - network_border_group = "us-west-2" -> null
      - public_dns           = "ec2-44-231-41-16.us-west-2.compute.amazonaws.com" -> null
      - public_ip            = "44.231.41.16" -> null
      - public_ipv4_pool     = "amazon" -> null
      - tags                 = {} -> null
      - tags_all             = {} -> null
      - vpc                  = true -> null
    }

  # aws_s3_bucket.s3_bucket will be destroyed
  - resource "aws_s3_bucket" "s3_bucket" {
      - arn                         = "arn:aws:s3:::zero-size-bucket" -> null
      - bucket                      = "zero-size-bucket" -> null
      - bucket_domain_name          = "zero-size-bucket.s3.amazonaws.com" -> null
      - bucket_regional_domain_name = "zero-size-bucket.s3.us-west-2.amazonaws.com" -> null
      - force_destroy               = false -> null
      - hosted_zone_id              = "Z3BJ6K6RIION7M" -> null
      - id                          = "zero-size-bucket" -> null
      - object_lock_enabled         = false -> null
      - region                      = "us-west-2" -> null
      - request_payer               = "BucketOwner" -> null
      - tags                        = {} -> null
      - tags_all                    = {} -> null

      - grant {
          - id          = "de026302ac20fbf221e11960e87d1183000177a6ac654b88077e51a468f06ef7" -> null
          - permissions = [
              - "FULL_CONTROL",
            ] -> null
          - type        = "CanonicalUser" -> null
        }

      - server_side_encryption_configuration {
          - rule {
              - bucket_key_enabled = false -> null

              - apply_server_side_encryption_by_default {
                  - sse_algorithm = "AES256" -> null
                }
            }
        }

      - versioning {
          - enabled    = false -> null
          - mfa_delete = false -> null
        }
    }

Plan: 0 to add, 0 to change, 2 to destroy.

Changes to Outputs:
  - eip_       = {
      - address                   = null
      - allocation_id             = "eipalloc-03d5bb8b65581c7d9"
      - associate_with_private_ip = null
      - association_id            = ""
      - carrier_ip                = ""
      - customer_owned_ip         = ""
      - customer_owned_ipv4_pool  = ""
      - domain                    = "vpc"
      - id                        = "eipalloc-03d5bb8b65581c7d9"
      - instance                  = ""
      - network_border_group      = "us-west-2"
      - network_interface         = ""
      - private_dns               = null
      - private_ip                = ""
      - public_dns                = "ec2-44-231-41-16.us-west-2.compute.amazonaws.com"
      - public_ip                 = "44.231.41.16"
      - public_ipv4_pool          = "amazon"
      - tags                      = {}
      - tags_all                  = {}
      - timeouts                  = null
      - vpc                       = true
    } -> null
  - s3_buckets = {
      - acceleration_status                  = ""
      - acl                                  = null
      - arn                                  = "arn:aws:s3:::zero-size-bucket"
      - bucket                               = "zero-size-bucket"
      - bucket_domain_name                   = "zero-size-bucket.s3.amazonaws.com"
      - bucket_prefix                        = ""
      - bucket_regional_domain_name          = "zero-size-bucket.s3.us-west-2.amazonaws.com"
      - cors_rule                            = []
      - force_destroy                        = false
      - grant                                = [
          - {
              - id          = "de026302ac20fbf221e11960e87d1183000177a6ac654b88077e51a468f06ef7"
              - permissions = [
                  - "FULL_CONTROL",
                ]
              - type        = "CanonicalUser"
              - uri         = ""
            },
        ]
      - hosted_zone_id                       = "Z3BJ6K6RIION7M"
      - id                                   = "zero-size-bucket"
      - lifecycle_rule                       = []
      - logging                              = []
      - object_lock_configuration            = []
      - object_lock_enabled                  = false
      - policy                               = ""
      - region                               = "us-west-2"
      - replication_configuration            = []
      - request_payer                        = "BucketOwner"
      - server_side_encryption_configuration = [
          - {
              - rule = [
                  - {
                      - apply_server_side_encryption_by_default = [
                          - {
                              - kms_master_key_id = ""
                              - sse_algorithm     = "AES256"
                            },
                        ]
                      - bucket_key_enabled                      = false
                    },
                ]
            },
        ]
      - tags                                 = {}
      - tags_all                             = {}
      - timeouts                             = null
      - versioning                           = [
          - {
              - enabled    = false
              - mfa_delete = false
            },
        ]
      - website                              = []
      - website_domain                       = null
      - website_endpoint                     = null
    } -> null
aws_eip.eip: Destroying... [id=eipalloc-03d5bb8b65581c7d9]
aws_s3_bucket.s3_bucket: Destroying... [id=zero-size-bucket]
aws_eip.eip: Destruction complete after 2s
aws_s3_bucket.s3_bucket: Destruction complete after 2s

Destroy complete! Resources: 2 destroyed.
```


# Perform the changes

```
resource "aws_s3_bucket" "s3_bucket" {
  bucket = "zero-size-bucket"
}

output "s3_buckets" {
#   value = aws_s3_bucket.s3_bucket.arn
  value = aws_s3_bucket.s3_bucket
}

resource "aws_eip" "eip" {
  vpc = true
}

output "eip_" {
#   value = aws_eip.eip.public_ip
  value = aws_eip.eip
}
```


$ terraform init
```
$ terraform init

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/aws from the dependency lock file
- Using previously-installed hashicorp/aws v4.67.0

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```


$ terraform plan
```
$ terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # aws_eip.eip will be created
  + resource "aws_eip" "eip" {
      + allocation_id        = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = (known after apply)
      + id                   = (known after apply)
      + instance             = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + tags_all             = (known after apply)
      + vpc                  = true
    }

  # aws_s3_bucket.s3_bucket will be created
  + resource "aws_s3_bucket" "s3_bucket" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "zero-size-bucket"
      + bucket_domain_name          = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags_all                    = (known after apply)
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + eip_       = {
      + address                   = null
      + allocation_id             = (known after apply)
      + associate_with_private_ip = null
      + association_id            = (known after apply)
      + carrier_ip                = (known after apply)
      + customer_owned_ip         = (known after apply)
      + customer_owned_ipv4_pool  = null
      + domain                    = (known after apply)
      + id                        = (known after apply)
      + instance                  = (known after apply)
      + network_border_group      = (known after apply)
      + network_interface         = (known after apply)
      + private_dns               = (known after apply)
      + private_ip                = (known after apply)
      + public_dns                = (known after apply)
      + public_ip                 = (known after apply)
      + public_ipv4_pool          = (known after apply)
      + tags                      = null
      + tags_all                  = (known after apply)
      + timeouts                  = null
      + vpc                       = true
    }
  + s3_buckets = {
      + acceleration_status                  = (known after apply)
      + acl                                  = (known after apply)
      + arn                                  = (known after apply)
      + bucket                               = "zero-size-bucket"
      + bucket_domain_name                   = (known after apply)
      + bucket_prefix                        = (known after apply)
      + bucket_regional_domain_name          = (known after apply)
      + cors_rule                            = (known after apply)
      + force_destroy                        = false
      + grant                                = (known after apply)
      + hosted_zone_id                       = (known after apply)
      + id                                   = (known after apply)
      + lifecycle_rule                       = (known after apply)
      + logging                              = (known after apply)
      + object_lock_configuration            = (known after apply)
      + object_lock_enabled                  = (known after apply)
      + policy                               = (known after apply)
      + region                               = (known after apply)
      + replication_configuration            = (known after apply)
      + request_payer                        = (known after apply)
      + server_side_encryption_configuration = (known after apply)
      + tags                                 = null
      + tags_all                             = (known after apply)
      + timeouts                             = null
      + versioning                           = (known after apply)
      + website                              = (known after apply)
      + website_domain                       = (known after apply)
      + website_endpoint                     = (known after apply)
    }

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you
run "terraform apply" now.
```


$ terraform apply --auto-approve
```
$ terraform apply --auto-approve

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # aws_eip.eip will be created
  + resource "aws_eip" "eip" {
      + allocation_id        = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = (known after apply)
      + id                   = (known after apply)
      + instance             = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + tags_all             = (known after apply)
      + vpc                  = true
    }

  # aws_s3_bucket.s3_bucket will be created
  + resource "aws_s3_bucket" "s3_bucket" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "zero-size-bucket"
      + bucket_domain_name          = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags_all                    = (known after apply)
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + eip_       = {
      + address                   = null
      + allocation_id             = (known after apply)
      + associate_with_private_ip = null
      + association_id            = (known after apply)
      + carrier_ip                = (known after apply)
      + customer_owned_ip         = (known after apply)
      + customer_owned_ipv4_pool  = null
      + domain                    = (known after apply)
      + id                        = (known after apply)
      + instance                  = (known after apply)
      + network_border_group      = (known after apply)
      + network_interface         = (known after apply)
      + private_dns               = (known after apply)
      + private_ip                = (known after apply)
      + public_dns                = (known after apply)
      + public_ip                 = (known after apply)
      + public_ipv4_pool          = (known after apply)
      + tags                      = null
      + tags_all                  = (known after apply)
      + timeouts                  = null
      + vpc                       = true
    }
  + s3_buckets = {
      + acceleration_status                  = (known after apply)
      + acl                                  = (known after apply)
      + arn                                  = (known after apply)
      + bucket                               = "zero-size-bucket"
      + bucket_domain_name                   = (known after apply)
      + bucket_prefix                        = (known after apply)
      + bucket_regional_domain_name          = (known after apply)
      + cors_rule                            = (known after apply)
      + force_destroy                        = false
      + grant                                = (known after apply)
      + hosted_zone_id                       = (known after apply)
      + id                                   = (known after apply)
      + lifecycle_rule                       = (known after apply)
      + logging                              = (known after apply)
      + object_lock_configuration            = (known after apply)
      + object_lock_enabled                  = (known after apply)
      + policy                               = (known after apply)
      + region                               = (known after apply)
      + replication_configuration            = (known after apply)
      + request_payer                        = (known after apply)
      + server_side_encryption_configuration = (known after apply)
      + tags                                 = null
      + tags_all                             = (known after apply)
      + timeouts                             = null
      + versioning                           = (known after apply)
      + website                              = (known after apply)
      + website_domain                       = (known after apply)
      + website_endpoint                     = (known after apply)
    }
aws_eip.eip: Creating...
aws_s3_bucket.s3_bucket: Creating...
aws_eip.eip: Creation complete after 3s [id=eipalloc-09357e693779df13f]
aws_s3_bucket.s3_bucket: Creation complete after 8s [id=zero-size-bucket]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

eip_ = {
  "address" = tostring(null)
  "allocation_id" = "eipalloc-09357e693779df13f"
  "associate_with_private_ip" = tostring(null)
  "association_id" = ""
  "carrier_ip" = ""
  "customer_owned_ip" = ""
  "customer_owned_ipv4_pool" = ""
  "domain" = "vpc"
  "id" = "eipalloc-09357e693779df13f"
  "instance" = ""
  "network_border_group" = "us-west-2"
  "network_interface" = ""
  "private_dns" = tostring(null)
  "private_ip" = ""
  "public_dns" = "ec2-52-39-182-249.us-west-2.compute.amazonaws.com"
  "public_ip" = "52.39.182.249"
  "public_ipv4_pool" = "amazon"
  "tags" = tomap(null) /* of string */
  "tags_all" = tomap({})
  "timeouts" = null /* object */
  "vpc" = true
}
s3_buckets = {
  "acceleration_status" = ""
  "acl" = tostring(null)
  "arn" = "arn:aws:s3:::zero-size-bucket"
  "bucket" = "zero-size-bucket"
  "bucket_domain_name" = "zero-size-bucket.s3.amazonaws.com"
  "bucket_prefix" = ""
  "bucket_regional_domain_name" = "zero-size-bucket.s3.us-west-2.amazonaws.com"
  "cors_rule" = tolist([])
  "force_destroy" = false
  "grant" = toset([
    {
      "id" = "de026302ac20fbf221e11960e87d1183000177a6ac654b88077e51a468f06ef7"
      "permissions" = toset([
        "FULL_CONTROL",
      ])
      "type" = "CanonicalUser"
      "uri" = ""
    },
  ])
  "hosted_zone_id" = "Z3BJ6K6RIION7M"
  "id" = "zero-size-bucket"
  "lifecycle_rule" = tolist([])
  "logging" = tolist([])
  "object_lock_configuration" = tolist([])
  "object_lock_enabled" = false
  "policy" = ""
  "region" = "us-west-2"
  "replication_configuration" = tolist([])
  "request_payer" = "BucketOwner"
  "server_side_encryption_configuration" = tolist([
    {
      "rule" = tolist([
        {
          "apply_server_side_encryption_by_default" = tolist([
            {
              "kms_master_key_id" = ""
              "sse_algorithm" = "AES256"
            },
          ])
          "bucket_key_enabled" = false
        },
      ])
    },
  ])
  "tags" = tomap(null) /* of string */
  "tags_all" = tomap({})
  "timeouts" = null /* object */
  "versioning" = tolist([
    {
      "enabled" = false
      "mfa_delete" = false
    },
  ])
  "website" = tolist([])
  "website_domain" = tostring(null)
  "website_endpoint" = tostring(null)
}
```


$ terraform destroy --auto-approve
```
$ terraform destroy --auto-approve
aws_eip.eip: Refreshing state... [id=eipalloc-09357e693779df13f]
aws_s3_bucket.s3_bucket: Refreshing state... [id=zero-size-bucket]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_eip.eip will be destroyed
  - resource "aws_eip" "eip" {
      - allocation_id        = "eipalloc-09357e693779df13f" -> null
      - domain               = "vpc" -> null
      - id                   = "eipalloc-09357e693779df13f" -> null
      - network_border_group = "us-west-2" -> null
      - public_dns           = "ec2-52-39-182-249.us-west-2.compute.amazonaws.com" -> null
      - public_ip            = "52.39.182.249" -> null
      - public_ipv4_pool     = "amazon" -> null
      - tags                 = {} -> null
      - tags_all             = {} -> null
      - vpc                  = true -> null
    }

  # aws_s3_bucket.s3_bucket will be destroyed
  - resource "aws_s3_bucket" "s3_bucket" {
      - arn                         = "arn:aws:s3:::zero-size-bucket" -> null
      - bucket                      = "zero-size-bucket" -> null
      - bucket_domain_name          = "zero-size-bucket.s3.amazonaws.com" -> null
      - bucket_regional_domain_name = "zero-size-bucket.s3.us-west-2.amazonaws.com" -> null
      - force_destroy               = false -> null
      - hosted_zone_id              = "Z3BJ6K6RIION7M" -> null
      - id                          = "zero-size-bucket" -> null
      - object_lock_enabled         = false -> null
      - region                      = "us-west-2" -> null
      - request_payer               = "BucketOwner" -> null
      - tags                        = {} -> null
      - tags_all                    = {} -> null

      - grant {
          - id          = "de026302ac20fbf221e11960e87d1183000177a6ac654b88077e51a468f06ef7" -> null
          - permissions = [
              - "FULL_CONTROL",
            ] -> null
          - type        = "CanonicalUser" -> null
        }

      - server_side_encryption_configuration {
          - rule {
              - bucket_key_enabled = false -> null

              - apply_server_side_encryption_by_default {
                  - sse_algorithm = "AES256" -> null
                }
            }
        }

      - versioning {
          - enabled    = false -> null
          - mfa_delete = false -> null
        }
    }

Plan: 0 to add, 0 to change, 2 to destroy.

Changes to Outputs:
  - eip_       = {
      - address                   = null
      - allocation_id             = "eipalloc-09357e693779df13f"
      - associate_with_private_ip = null
      - association_id            = ""
      - carrier_ip                = ""
      - customer_owned_ip         = ""
      - customer_owned_ipv4_pool  = ""
      - domain                    = "vpc"
      - id                        = "eipalloc-09357e693779df13f"
      - instance                  = ""
      - network_border_group      = "us-west-2"
      - network_interface         = ""
      - private_dns               = null
      - private_ip                = ""
      - public_dns                = "ec2-52-39-182-249.us-west-2.compute.amazonaws.com"
      - public_ip                 = "52.39.182.249"
      - public_ipv4_pool          = "amazon"
      - tags                      = {}
      - tags_all                  = {}
      - timeouts                  = null
      - vpc                       = true
    } -> null
  - s3_buckets = {
      - acceleration_status                  = ""
      - acl                                  = null
      - arn                                  = "arn:aws:s3:::zero-size-bucket"
      - bucket                               = "zero-size-bucket"
      - bucket_domain_name                   = "zero-size-bucket.s3.amazonaws.com"
      - bucket_prefix                        = ""
      - bucket_regional_domain_name          = "zero-size-bucket.s3.us-west-2.amazonaws.com"
      - cors_rule                            = []
      - force_destroy                        = false
      - grant                                = [
          - {
              - id          = "de026302ac20fbf221e11960e87d1183000177a6ac654b88077e51a468f06ef7"
              - permissions = [
                  - "FULL_CONTROL",
                ]
              - type        = "CanonicalUser"
              - uri         = ""
            },
        ]
      - hosted_zone_id                       = "Z3BJ6K6RIION7M"
      - id                                   = "zero-size-bucket"
      - lifecycle_rule                       = []
      - logging                              = []
      - object_lock_configuration            = []
      - object_lock_enabled                  = false
      - policy                               = ""
      - region                               = "us-west-2"
      - replication_configuration            = []
      - request_payer                        = "BucketOwner"
      - server_side_encryption_configuration = [
          - {
              - rule = [
                  - {
                      - apply_server_side_encryption_by_default = [
                          - {
                              - kms_master_key_id = ""
                              - sse_algorithm     = "AES256"
                            },
                        ]
                      - bucket_key_enabled                      = false
                    },
                ]
            },
        ]
      - tags                                 = {}
      - tags_all                             = {}
      - timeouts                             = null
      - versioning                           = [
          - {
              - enabled    = false
              - mfa_delete = false
            },
        ]
      - website                              = []
      - website_domain                       = null
      - website_endpoint                     = null
    } -> null
aws_eip.eip: Destroying... [id=eipalloc-09357e693779df13f]
aws_s3_bucket.s3_bucket: Destroying... [id=zero-size-bucket]
aws_eip.eip: Destruction complete after 1s
aws_s3_bucket.s3_bucket: Destruction complete after 1s

Destroy complete! Resources: 2 destroyed.
```