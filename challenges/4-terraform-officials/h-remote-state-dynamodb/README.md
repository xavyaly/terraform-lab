# Execution: chatGPT

# Execution Steps:

$ terraform init
```
$ terraform init

Initializing the backend...
╷
│ Error: Failed to get existing workspaces: S3 bucket does not exist.
│ 
│ The referenced S3 bucket must have been previously created. If the S3 bucket
│ was created within the last minute, please wait for a minute or two and try
│ again.
│ 
│ Error: NoSuchBucket: The specified bucket does not exist
│       status code: 404, request id: JHBJXZM77A779YJQ, host id: 20yQCgIljuY/CjY4xGeVagGi+gyCRSrx5rEvFMyMgEGR/CAHEZa1fR6QHAyVHbjGtOj9JUcFCuDzskJt0x2LmQ==
```

# SCENARIO
```
1. Created an s3 bucket through CLI
2. Created dynamodb, ec2 instane and push the state file to an existing s3 bucket
3. Destroy the complete resources once done
```

# Create a s3 bucket

$ aws s3api create-bucket --bucket my-terraform-state-buckets --region us-west-2 --create-bucket-configuration LocationConstraint=us-west-2
```
$ aws s3api create-bucket --bucket my-terraform-state-buckets --region us-west-2 --create-bucket-configuration LocationConstraint=us-west-2
{
    "Location": "http://my-terraform-state-buckets.s3.amazonaws.com/"
}
```

# List the s3 buckets
```
$ aws s3 ls
2023-07-06 10:39:17 knowledgeadda1
2023-07-01 14:17:49 learnzone
2023-08-22 20:47:11 my-terraform-state-buckets
2023-08-09 16:08:34 unique-bucket-09082023
```

$ terraform init -debug             # to debug the tf code


$ terraform init
```
$ terraform init

Initializing the backend...

Successfully configured the backend "s3"! Terraform will automatically
use this backend unless the backend configuration changes.

Initializing provider plugins...
- Finding latest version of hashicorp/aws...
- Installing hashicorp/aws v5.13.1...
- Installed hashicorp/aws v5.13.1 (signed by HashiCorp)

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


$ terraform plan

```
$ terraform plan
Acquiring state lock. This may take a few moments...
╷
│ Error: Error acquiring the state lock
│ 
│ Error message: 2 errors occurred:
│       * ResourceNotFoundException: Requested resource not found
│       * ResourceNotFoundException: Requested resource not found
│ 
│ 
│ 
│ Terraform acquires a state lock to protect the state from being written
│ by multiple users at the same time. Please resolve the issue above and try
│ again. For most commands, you can disable locking with the "-lock=false"
│ flag, but this is not recommended.
```


$ terraform plan "-lock=false"

```
$ terraform plan "-lock=false"
data.aws_s3_bucket.existing_bucket: Reading...
data.aws_s3_bucket.existing_bucket: Read complete after 2s [id=my-terraform-state-buckets]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with
the following symbols:
  + create

Terraform will perform the following actions:

  # aws_dynamodb_table.tf_state_lock will be created
  + resource "aws_dynamodb_table" "tf_state_lock" {
      + arn              = (known after apply)
      + billing_mode     = "PAY_PER_REQUEST"
      + hash_key         = "LockID"
      + id               = (known after apply)
      + name             = "my-terraform-state-lock"
      + read_capacity    = (known after apply)
      + stream_arn       = (known after apply)
      + stream_label     = (known after apply)
      + stream_view_type = (known after apply)
      + tags_all         = (known after apply)
      + write_capacity   = (known after apply)

      + attribute {
          + name = "LockID"
          + type = "S"
        }
    }

  # aws_instance.example will be created
  + resource "aws_instance" "example" {
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
      + instance_lifecycle                   = (known after apply)
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
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name" = "ExampleAppServerInstance"
        }
      + tags_all                             = {
          + "Name" = "ExampleAppServerInstance"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)
    }

  # aws_s3_bucket.tf_state_bucket will be created
  + resource "aws_s3_bucket" "tf_state_bucket" {
      + acceleration_status         = (known after apply)
      + acl                         = "private"
      + arn                         = (known after apply)
      + bucket                      = "my-terraform-state-buckets"
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

      + versioning {
          + enabled    = true
          + mfa_delete = false
        }
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + instance_id         = (known after apply)
  + instance_private_ip = (known after apply)
╷
│ Warning: Argument is deprecated
│ 
│   with aws_s3_bucket.tf_state_bucket,
│   on main.tf line 1, in resource "aws_s3_bucket" "tf_state_bucket":
│    1: resource "aws_s3_bucket" "tf_state_bucket" {
│ 
│ Use the aws_s3_bucket_versioning resource instead
│ 
│ (and 3 more similar warnings elsewhere)
╵

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions
if you run "terraform apply" now.
```

$ terraform apply 
```
$ terraform apply 
Acquiring state lock. This may take a few moments...
╷
│ Error: Error acquiring the state lock
│ 
│ Error message: 2 errors occurred:
│       * ResourceNotFoundException: Requested resource not found
│       * ResourceNotFoundException: Requested resource not found
│ 
│ 
│ 
│ Terraform acquires a state lock to protect the state from being written
│ by multiple users at the same time. Please resolve the issue above and try
│ again. For most commands, you can disable locking with the "-lock=false"
│ flag, but this is not recommended.
```

$ terraform apply "-lock=false" --auto-approve

```
$ terraform apply "-lock=false" --auto-approve
data.aws_s3_bucket.existing_bucket: Reading...
data.aws_s3_bucket.existing_bucket: Read complete after 2s [id=my-terraform-state-buckets]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with
the following symbols:
  + create

Terraform will perform the following actions:

  # aws_dynamodb_table.tf_state_lock will be created
  + resource "aws_dynamodb_table" "tf_state_lock" {
      + arn              = (known after apply)
      + billing_mode     = "PAY_PER_REQUEST"
      + hash_key         = "LockID"
      + id               = (known after apply)
      + name             = "my-terraform-state-lock"
      + read_capacity    = (known after apply)
      + stream_arn       = (known after apply)
      + stream_label     = (known after apply)
      + stream_view_type = (known after apply)
      + tags_all         = (known after apply)
      + write_capacity   = (known after apply)

      + attribute {
          + name = "LockID"
          + type = "S"
        }
    }

  # aws_instance.example will be created
  + resource "aws_instance" "example" {
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
      + instance_lifecycle                   = (known after apply)
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
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = (known after apply)
      + tags                                 = {
          + "Name" = "ExampleAppServerInstance"
        }
      + tags_all                             = {
          + "Name" = "ExampleAppServerInstance"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)
    }

  # aws_s3_bucket.tf_state_bucket will be created
  + resource "aws_s3_bucket" "tf_state_bucket" {
      + acceleration_status         = (known after apply)
      + acl                         = "private"
      + arn                         = (known after apply)
      + bucket                      = "my-terraform-state-buckets"
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

      + versioning {
          + enabled    = true
          + mfa_delete = false
        }
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + instance_id         = (known after apply)
  + instance_private_ip = (known after apply)
aws_dynamodb_table.tf_state_lock: Creating...
aws_s3_bucket.tf_state_bucket: Creating...
aws_instance.example: Creating...
aws_instance.example: Still creating... [10s elapsed]
aws_dynamodb_table.tf_state_lock: Still creating... [10s elapsed]
aws_dynamodb_table.tf_state_lock: Creation complete after 17s [id=my-terraform-state-lock]
aws_instance.example: Still creating... [20s elapsed]
aws_instance.example: Still creating... [30s elapsed]
aws_instance.example: Still creating... [40s elapsed]
aws_instance.example: Still creating... [50s elapsed]
aws_instance.example: Creation complete after 59s [id=i-0a1ff9b44d59269bc]
╷
│ Warning: Argument is deprecated
│ 
│   with aws_s3_bucket.tf_state_bucket,
│   on main.tf line 1, in resource "aws_s3_bucket" "tf_state_bucket":
│    1: resource "aws_s3_bucket" "tf_state_bucket" {
│ 
│ Use the aws_s3_bucket_versioning resource instead
│ 
│ (and 5 more similar warnings elsewhere)
╵
╷
│ Error: creating Amazon S3 (Simple Storage) Bucket (my-terraform-state-buckets): BucketAlreadyOwnedByYou: Your previous request to create the named bucket succeeded and you already own it.
│       status code: 409, request id: GBE3136847SGSXZM, host id: 9FoR50AoLQDztI3wTpq+v9GYQCNuL5JtekngjC71ptmbsotCfEHsUsPmubPeuDmQw3RlGLWXJLU=
│ 
│   with aws_s3_bucket.tf_state_bucket,
│   on main.tf line 1, in resource "aws_s3_bucket" "tf_state_bucket":
│    1: resource "aws_s3_bucket" "tf_state_bucket" {
│ 
╵
```

# Cross check the resources and state file successfully pushed to s3 bucket

```
$ aws s3 ls s3://my-terraform-state-buckets
2023-08-23 00:43:56       7701 terraform.tfstate
```

```
$ aws ec2 describe-instances --query "Reservations[*].Instances[*].{Instance:InstanceId}"
[
    [
        {
            "Instance": "i-0a1ff9b44d59269bc"
        }
    ]
]
```

```
$ aws dynamodb scan --table-name my-terraform-state-lock
{
    "Items": [
        {
            "Digest": {
                "S": "1c776d814d5fad52e8e3b80d37b0573d"
            },
            "LockID": {
                "S": "my-terraform-state-buckets/terraform.tfstate-md5"
            }
        }
    ],
    "Count": 1,
    "ScannedCount": 1,
    "ConsumedCapacity": null
}
```


$ terraform destroy --auto-approve

```
$ terraform destroy --auto-approve
Acquiring state lock. This may take a few moments...
data.aws_s3_bucket.existing_bucket: Reading...
aws_dynamodb_table.tf_state_lock: Refreshing state... [id=my-terraform-state-lock]
aws_instance.example: Refreshing state... [id=i-0a1ff9b44d59269bc]
data.aws_s3_bucket.existing_bucket: Read complete after 2s [id=my-terraform-state-buckets]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with
the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_dynamodb_table.tf_state_lock will be destroyed
  - resource "aws_dynamodb_table" "tf_state_lock" {
      - arn                         = "arn:aws:dynamodb:us-west-2:252473277340:table/my-terraform-state-lock" -> null
      - billing_mode                = "PAY_PER_REQUEST" -> null
      - deletion_protection_enabled = false -> null
      - hash_key                    = "LockID" -> null
      - id                          = "my-terraform-state-lock" -> null
      - name                        = "my-terraform-state-lock" -> null
      - read_capacity               = 0 -> null
      - stream_enabled              = false -> null
      - table_class                 = "STANDARD" -> null
      - tags                        = {} -> null
      - tags_all                    = {} -> null
      - write_capacity              = 0 -> null

      - attribute {
          - name = "LockID" -> null
          - type = "S" -> null
        }

      - point_in_time_recovery {
          - enabled = false -> null
        }

      - ttl {
          - enabled = false -> null
        }
    }

  # aws_instance.example will be destroyed
  - resource "aws_instance" "example" {
      - ami                                  = "ami-830c94e3" -> null
      - arn                                  = "arn:aws:ec2:us-west-2:252473277340:instance/i-0a1ff9b44d59269bc" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-west-2b" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-0a1ff9b44d59269bc" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - placement_partition_number           = 0 -> null
      - primary_network_interface_id         = "eni-0fcde4be8752156c3" -> null
      - private_dns                          = "ip-172-31-27-233.us-west-2.compute.internal" -> null
      - private_ip                           = "172.31.27.233" -> null
      - public_dns                           = "ec2-52-43-102-232.us-west-2.compute.amazonaws.com" -> null
      - public_ip                            = "52.43.102.232" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [
          - "default",
        ] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-070b34ee88c1fe521" -> null
      - tags                                 = {
          - "Name" = "ExampleAppServerInstance"
        } -> null
      - tags_all                             = {
          - "Name" = "ExampleAppServerInstance"
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
          - http_protocol_ipv6          = "disabled" -> null
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
          - volume_id             = "vol-03cf83b664ea19fe4" -> null
          - volume_size           = 8 -> null
          - volume_type           = "standard" -> null
        }
    }

Plan: 0 to add, 0 to change, 2 to destroy.

Changes to Outputs:
  - instance_id         = "i-0a1ff9b44d59269bc" -> null
  - instance_private_ip = "172.31.27.233" -> null
aws_dynamodb_table.tf_state_lock: Destroying... [id=my-terraform-state-lock]
aws_instance.example: Destroying... [id=i-0a1ff9b44d59269bc]
aws_dynamodb_table.tf_state_lock: Destruction complete after 4s
aws_instance.example: Still destroying... [id=i-0a1ff9b44d59269bc, 10s elapsed]
aws_instance.example: Still destroying... [id=i-0a1ff9b44d59269bc, 20s elapsed]
aws_instance.example: Still destroying... [id=i-0a1ff9b44d59269bc, 30s elapsed]
aws_instance.example: Destruction complete after 33s
╷
│ Warning: Argument is deprecated
│ 
│   with aws_s3_bucket.tf_state_bucket,
│   on main.tf line 1, in resource "aws_s3_bucket" "tf_state_bucket":
│    1: resource "aws_s3_bucket" "tf_state_bucket" {
│ 
│ Use the aws_s3_bucket_versioning resource instead
│ 
│ (and one more similar warning elsewhere)
╵
Releasing state lock. This may take a few moments...
╷
│ Error: Error releasing the state lock
│ 
│ Error message: failed to retrieve lock info: ResourceNotFoundException: Requested resource not found
│ 
│ Terraform acquires a lock when accessing your state to prevent others
│ running Terraform to potentially modify the state at the same time. An
│ error occurred while releasing this lock. This could mean that the lock
│ did or did not release properly. If the lock didn't release properly,
│ Terraform may not be able to run future commands since it'll appear as if
│ the lock is held.
│ 
│ In this scenario, please call the "force-unlock" command to unlock the
│ state manually. This is a very dangerous operation since if it is done
│ erroneously it could result in two people modifying state at the same time.
│ Only call this command if you're certain that the unlock above failed and
│ that no one else is holding a lock.
```


$ terraform force-unlock my-terraform-state-buckets/terraform.tfstate
```
$ terraform force-unlock my-terraform-state-buckets/terraform.tfstate
Do you really want to force-unlock?
  Terraform will remove the lock on the remote state.
  This will allow local Terraform commands to modify this state, even though it
  may still be in use. Only 'yes' will be accepted to confirm.

  Enter a value: yes

Failed to unlock state: failed to retrieve lock info: ResourceNotFoundException: Requested resource not found
```

$ aws s3 ls
```
$ aws s3 ls
2023-07-06 10:39:17 knowledgeadda1
2023-07-01 14:17:49 learnzone
2023-09-29 16:13:57 my-terraform-state-buckets
2023-08-09 16:08:34 unique-bucket-09082023
```


$ aws s3 rb s3://my-terraform-state-buckets --force
```
$ aws s3 rb s3://my-terraform-state-buckets --force
delete: s3://my-terraform-state-buckets/terraform.tfstate
remove_bucket: my-terraform-state-buckets
```


$ aws s3 ls
```
$ aws s3 ls
2023-07-06 10:39:17 knowledgeadda1
2023-07-01 14:17:49 learnzone
2023-08-09 16:08:34 unique-bucket-09082023
```

# COMPLETED, though we were getting multiple errors but activity is completed





