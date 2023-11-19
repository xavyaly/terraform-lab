$ terraform init
```
$ terraform init

Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/aws versions matching "~> 4.0"...
- Installing hashicorp/aws v4.67.0...
- Installed hashicorp/aws v4.67.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

$ terraform fmt
```
$ terraform fmt
output.tf
```

$ terraform validate
```
$ terraform validate
Success! The configuration is valid.
```


# add any arbitrary line in any file 

$ terraform validate
```
$ terraform validate
╷
│ Error: Unsupported argument
│ 
│   on main.tf line 9, in resource "aws_instance" "web_server":
│    9:   a = bucket
│ 
│ An argument named "a" is not expected here. Did you mean "arn"?
```


# terraform plan will also validate first 

$ terraform plan
```
$ terraform plan
╷
│ Error: Unsupported argument
│ 
│   on main.tf line 9, in resource "aws_instance" "web_server":
│    9:   a = bucket
│ 
│ An argument named "a" is not expected here. Did you mean "id"?
```


# Execution

$ terraform init

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

  # aws_instance.web_server will be created
  + resource "aws_instance" "web_server" {
      + ami                                  = "ami-830c94e3"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Email" = "xyz@gmail.coom"
          + "Name"  = "Operations"
        }
      + tags_all                             = {
          + "Email" = "xyz@gmail.coom"
          + "Name"  = "Operations"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)
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

Plan: 3 to add, 0 to change, 0 to destroy.

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
aws_instance.web_server: Creating...
aws_eip.eip: Creation complete after 2s [id=eipalloc-058bb80978e170bf9]
aws_s3_bucket.s3_bucket: Creation complete after 7s [id=zero-size-bucket]
aws_instance.web_server: Still creating... [10s elapsed]
aws_instance.web_server: Still creating... [20s elapsed]
aws_instance.web_server: Still creating... [30s elapsed]
aws_instance.web_server: Still creating... [40s elapsed]
aws_instance.web_server: Still creating... [50s elapsed]
aws_instance.web_server: Creation complete after 58s [id=i-044d3a894917e21d6]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

Outputs:

eip_ = {
  "address" = tostring(null)
  "allocation_id" = "eipalloc-058bb80978e170bf9"
  "associate_with_private_ip" = tostring(null)
  "association_id" = ""
  "carrier_ip" = ""
  "customer_owned_ip" = ""
  "customer_owned_ipv4_pool" = ""
  "domain" = "vpc"
  "id" = "eipalloc-058bb80978e170bf9"
  "instance" = ""
  "network_border_group" = "us-west-2"
  "network_interface" = ""
  "private_dns" = tostring(null)
  "private_ip" = ""
  "public_dns" = "ec2-44-234-198-239.us-west-2.compute.amazonaws.com"
  "public_ip" = "44.234.198.239"
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

# Associated instance ID -> Is empty no allocation with any instance -> check in AWS UI 

# Add the eip_association code 


$ terraform plan
```
$ terraform plan
aws_eip.eip: Refreshing state... [id=eipalloc-058bb80978e170bf9]
aws_instance.web_server: Refreshing state... [id=i-044d3a894917e21d6]
aws_s3_bucket.s3_bucket: Refreshing state... [id=zero-size-bucket]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # aws_eip_association.eip_assoc will be created
  + resource "aws_eip_association" "eip_assoc" {
      + allocation_id        = (known after apply)
      + id                   = (known after apply)
      + instance_id          = "i-044d3a894917e21d6"
      + network_interface_id = (known after apply)
      + private_ip_address   = (known after apply)
      + public_ip            = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  ~ eip_       = {
      - address                   = null
      - allocation_id             = "eipalloc-058bb80978e170bf9"
      - associate_with_private_ip = null
      - association_id            = ""
      - carrier_ip                = ""
      - customer_owned_ip         = ""
      - customer_owned_ipv4_pool  = ""
      - domain                    = "vpc"
      - id                        = "eipalloc-058bb80978e170bf9"
      - instance                  = ""
      - network_border_group      = "us-west-2"
      - network_interface         = ""
      - private_dns               = null
      - private_ip                = ""
      - public_dns                = "ec2-44-234-198-239.us-west-2.compute.amazonaws.com"
      - public_ip                 = "44.234.198.239"
      - public_ipv4_pool          = "amazon"
      - tags                      = null
      - tags_all                  = {}
      - timeouts                  = null
      - vpc                       = true
    } -> "44.234.198.239"
  ~ s3_buckets = {
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
      - tags                                 = null
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
    } -> "arn:aws:s3:::zero-size-bucket"

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you
run "terraform apply" now.
```

OR

$ terraform plan -out=out.vars
```
$ terraform plan -out=out.vars
aws_eip.eip: Refreshing state... [id=eipalloc-058bb80978e170bf9]
aws_instance.web_server: Refreshing state... [id=i-044d3a894917e21d6]
aws_s3_bucket.s3_bucket: Refreshing state... [id=zero-size-bucket]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # aws_eip_association.eip_assoc will be created
  + resource "aws_eip_association" "eip_assoc" {
      + allocation_id        = (known after apply)
      + id                   = (known after apply)
      + instance_id          = "i-044d3a894917e21d6"
      + network_interface_id = (known after apply)
      + private_ip_address   = (known after apply)
      + public_ip            = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  ~ eip_       = {
      - address                   = null
      - allocation_id             = "eipalloc-058bb80978e170bf9"
      - associate_with_private_ip = null
      - association_id            = ""
      - carrier_ip                = ""
      - customer_owned_ip         = ""
      - customer_owned_ipv4_pool  = ""
      - domain                    = "vpc"
      - id                        = "eipalloc-058bb80978e170bf9"
      - instance                  = ""
      - network_border_group      = "us-west-2"
      - network_interface         = ""
      - private_dns               = null
      - private_ip                = ""
      - public_dns                = "ec2-44-234-198-239.us-west-2.compute.amazonaws.com"
      - public_ip                 = "44.234.198.239"
      - public_ipv4_pool          = "amazon"
      - tags                      = null
      - tags_all                  = {}
      - timeouts                  = null
      - vpc                       = true
    } -> "44.234.198.239"
  ~ s3_buckets = {
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
      - tags                                 = null
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
    } -> "arn:aws:s3:::zero-size-bucket"

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Saved the plan to: out.vars

To perform exactly these actions, run the following command to apply:
    terraform apply "out.vars"
```


$ terraform apply "out.vars"
```
$ terraform apply "out.vars"
aws_eip_association.eip_assoc: Creating...
╷
│ Error: creating EC2 EIP Association: MissingParameter: Either public IP or allocation id must be specified
│       status code: 400, request id: 4d2bbb8e-8f0a-4e89-a248-11145e7ac4a5
│ 
│   with aws_eip_association.eip_assoc,
│   on main.tf line 19, in resource "aws_eip_association" "eip_assoc":
│   19: resource "aws_eip_association" "eip_assoc" {
```


# Troubleshooting
  allocation_id = aws_eip.eip.public_ip


terraform apply "out.vars"
```
 terraform apply "out.vars"
╷
│ Error: Saved plan is stale
│ 
│ The given plan file can no longer be applied because the state was changed by another operation after the plan was
│ created.
```

$ terraform plan -out=out.vars
```
$ terraform plan -out=out.vars
aws_eip.eip: Refreshing state... [id=eipalloc-058bb80978e170bf9]
aws_s3_bucket.s3_bucket: Refreshing state... [id=zero-size-bucket]
aws_instance.web_server: Refreshing state... [id=i-044d3a894917e21d6]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # aws_eip_association.eip_assoc will be created
  + resource "aws_eip_association" "eip_assoc" {
      + allocation_id        = "44.234.198.239"
      + id                   = (known after apply)
      + instance_id          = "i-044d3a894917e21d6"
      + network_interface_id = (known after apply)
      + private_ip_address   = (known after apply)
      + public_ip            = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Saved the plan to: out.vars

To perform exactly these actions, run the following command to apply:
    terraform apply "out.vars"
```

$ terraform apply "out.vars"
```
$ terraform apply "out.vars"
aws_eip_association.eip_assoc: Creating...
╷
│ Error: creating EC2 EIP Association: InvalidAllocationID.NotFound: The allocation ID '44.234.198.239' does not exist
│       status code: 400, request id: f751136f-8a88-4a56-b1ea-3acd9ec96e84
│ 
│   with aws_eip_association.eip_assoc,
│   on main.tf line 19, in resource "aws_eip_association" "eip_assoc":
│   19: resource "aws_eip_association" "eip_assoc" {
```

# Troubleshoot
allocation_id = aws_eip.eip.id


# Execution

$ terraform plan -out=out.vars
```
$ terraform plan -out=out.vars
aws_eip.eip: Refreshing state... [id=eipalloc-058bb80978e170bf9]
aws_instance.web_server: Refreshing state... [id=i-044d3a894917e21d6]
aws_s3_bucket.s3_bucket: Refreshing state... [id=zero-size-bucket]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # aws_eip_association.eip_assoc will be created
  + resource "aws_eip_association" "eip_assoc" {
      + allocation_id        = "eipalloc-058bb80978e170bf9"
      + id                   = (known after apply)
      + instance_id          = "i-044d3a894917e21d6"
      + network_interface_id = (known after apply)
      + private_ip_address   = (known after apply)
      + public_ip            = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Saved the plan to: out.vars

To perform exactly these actions, run the following command to apply:
    terraform apply "out.vars"
```

$ terraform apply "out.vars"
```
$ terraform apply "out.vars"
aws_eip_association.eip_assoc: Creating...
aws_eip_association.eip_assoc: Creation complete after 3s [id=eipassoc-0b8efece363424df9]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

eip_ = "44.234.198.239"
s3_buckets = "arn:aws:s3:::zero-size-bucket"
```


# Cross checked in AWS Wizard
Associated instance ID
i-044d3a894917e21d6


$ terraform destroy --auto-approve
```
$ terraform destroy --auto-approve
aws_eip.eip: Refreshing state... [id=eipalloc-058bb80978e170bf9]
aws_s3_bucket.s3_bucket: Refreshing state... [id=zero-size-bucket]
aws_instance.web_server: Refreshing state... [id=i-044d3a894917e21d6]
aws_eip_association.eip_assoc: Refreshing state... [id=eipassoc-0b8efece363424df9]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_eip.eip will be destroyed
  - resource "aws_eip" "eip" {
      - allocation_id        = "eipalloc-058bb80978e170bf9" -> null
      - association_id       = "eipassoc-0b8efece363424df9" -> null
      - domain               = "vpc" -> null
      - id                   = "eipalloc-058bb80978e170bf9" -> null
      - instance             = "i-044d3a894917e21d6" -> null
      - network_border_group = "us-west-2" -> null
      - network_interface    = "eni-0994aa148386b31be" -> null
      - private_dns          = "ip-172-31-25-125.us-west-2.compute.internal" -> null
      - private_ip           = "172.31.25.125" -> null
      - public_dns           = "ec2-44-234-198-239.us-west-2.compute.amazonaws.com" -> null
      - public_ip            = "44.234.198.239" -> null
      - public_ipv4_pool     = "amazon" -> null
      - tags                 = {} -> null
      - tags_all             = {} -> null
      - vpc                  = true -> null
    }

  # aws_eip_association.eip_assoc will be destroyed
  - resource "aws_eip_association" "eip_assoc" {
      - allocation_id        = "eipalloc-058bb80978e170bf9" -> null
      - id                   = "eipassoc-0b8efece363424df9" -> null
      - instance_id          = "i-044d3a894917e21d6" -> null
      - network_interface_id = "eni-0994aa148386b31be" -> null
      - private_ip_address   = "172.31.25.125" -> null
      - public_ip            = "44.234.198.239" -> null
    }

  # aws_instance.web_server will be destroyed
  - resource "aws_instance" "web_server" {
      - ami                                  = "ami-830c94e3" -> null
      - arn                                  = "arn:aws:ec2:us-west-2:252473277340:instance/i-044d3a894917e21d6" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-west-2b" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-044d3a894917e21d6" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - placement_partition_number           = 0 -> null
      - primary_network_interface_id         = "eni-0994aa148386b31be" -> null
      - private_dns                          = "ip-172-31-25-125.us-west-2.compute.internal" -> null
      - private_ip                           = "172.31.25.125" -> null
      - public_dns                           = "ec2-44-234-198-239.us-west-2.compute.amazonaws.com" -> null
      - public_ip                            = "44.234.198.239" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [
          - "default",
        ] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-070b34ee88c1fe521" -> null
      - tags                                 = {
          - "Email" = "xyz@gmail.coom"
          - "Name"  = "Operations"
        } -> null
      - tags_all                             = {
          - "Email" = "xyz@gmail.coom"
          - "Name"  = "Operations"
        } -> null
      - tenancy                              = "default" -> null
      - user_data_replace_on_change          = false -> null
      - vpc_security_group_ids               = [
          - "sg-017bab502ac04b90e",
        ] -> null

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - cpu_options {
          - core_count       = 1 -> null
          - threads_per_core = 1 -> null
        }

      - credit_specification {
          - cpu_credits = "standard" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - maintenance_options {
          - auto_recovery = "default" -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = "optional" -> null
          - instance_metadata_tags      = "disabled" -> null
        }

      - private_dns_name_options {
          - enable_resource_name_dns_a_record    = false -> null
          - enable_resource_name_dns_aaaa_record = false -> null
          - hostname_type                        = "ip-name" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/sda1" -> null
          - encrypted             = false -> null
          - iops                  = 0 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-05e3953c7ce157427" -> null
          - volume_size           = 8 -> null
          - volume_type           = "standard" -> null
        }
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

Plan: 0 to add, 0 to change, 4 to destroy.

Changes to Outputs:
  - eip_       = "44.234.198.239" -> null
  - s3_buckets = "arn:aws:s3:::zero-size-bucket" -> null
aws_eip_association.eip_assoc: Destroying... [id=eipassoc-0b8efece363424df9]
aws_s3_bucket.s3_bucket: Destroying... [id=zero-size-bucket]
aws_s3_bucket.s3_bucket: Destruction complete after 2s
aws_eip_association.eip_assoc: Destruction complete after 3s
aws_eip.eip: Destroying... [id=eipalloc-058bb80978e170bf9]
aws_instance.web_server: Destroying... [id=i-044d3a894917e21d6]
aws_eip.eip: Destruction complete after 2s
aws_instance.web_server: Still destroying... [id=i-044d3a894917e21d6, 10s elapsed]
aws_instance.web_server: Still destroying... [id=i-044d3a894917e21d6, 20s elapsed]
aws_instance.web_server: Still destroying... [id=i-044d3a894917e21d6, 30s elapsed]
aws_instance.web_server: Destruction complete after 33s

Destroy complete! Resources: 4 destroyed.
```