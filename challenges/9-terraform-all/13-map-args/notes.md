# meta args:

create_before_destroy
prevent_destroy
ignore_change

-----------------------------------------------------------------

```
resource "aws_instance" "web_server" {
  ami                    = var.aws_ami
  instance_type          = var.instance_type
  vpc_security_group_ids = ["default"]
  availability_zone      = "us-west-2a"
  # availability_zone      = "us-west-2b"

  # lifecycle {
  #   create_before_destroy = true
  # }

  tags = {
    # Name  = "Operations-${count.index}"
    Email = "xyz@gmail.coom"
  }
}
```

# Execute the init and plan and apply 

$ terraform apply -auto-approve
```
$ terraform apply -auto-approve

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated
with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.web_server will be created
  + resource "aws_instance" "web_server" {
      + ami                                  = "ami-830c94e3"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = "us-west-2a"
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
        }
      + tags_all                             = {
          + "Email" = "xyz@gmail.coom"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = [
          + "default",
        ]
    }

Plan: 1 to add, 0 to change, 0 to destroy.
aws_instance.web_server: Creating...
aws_instance.web_server: Still creating... [10s elapsed]
aws_instance.web_server: Still creating... [20s elapsed]
aws_instance.web_server: Still creating... [30s elapsed]
aws_instance.web_server: Creation complete after 36s [id=i-0ac69d104126b6ccd]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```


# Change the az from 2a to 2b and Execute the plan and apply -> it will destroy and create by deafult
availability_zone      = "us-west-2b"

$ terraform plan
```
$ terraform plan
aws_instance.web_server: Refreshing state... [id=i-0ac69d104126b6ccd]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated
with the following symbols:
-/+ destroy and then create replacement

Terraform will perform the following actions:

  # aws_instance.web_server must be replaced
-/+ resource "aws_instance" "web_server" {
      ~ arn                                  = "arn:aws:ec2:us-west-2:252473277340:instance/i-0ac69d104126b6ccd" -> (known after apply)
      ~ associate_public_ip_address          = true -> (known after apply)
      ~ availability_zone                    = "us-west-2a" -> "us-west-2b" # forces replacement
      ~ cpu_core_count                       = 1 -> (known after apply)
      ~ cpu_threads_per_core                 = 1 -> (known after apply)
      ~ disable_api_stop                     = false -> (known after apply)
      ~ disable_api_termination              = false -> (known after apply)
      ~ ebs_optimized                        = false -> (known after apply)
      - hibernation                          = false -> null
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      ~ id                                   = "i-0ac69d104126b6ccd" -> (known after apply)
      ~ instance_initiated_shutdown_behavior = "stop" -> (known after apply)
      ~ instance_state                       = "running" -> (known after apply)
      ~ ipv6_address_count                   = 0 -> (known after apply)
      ~ ipv6_addresses                       = [] -> (known after apply)
      + key_name                             = (known after apply)
      ~ monitoring                           = false -> (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      ~ placement_partition_number           = 0 -> (known after apply)
      ~ primary_network_interface_id         = "eni-0026ccb61193aba74" -> (known after apply)
      ~ private_dns                          = "ip-172-31-38-12.us-west-2.compute.internal" -> (known after apply)
      ~ private_ip                           = "172.31.38.12" -> (known after apply)
      ~ public_dns                           = "ec2-54-71-59-113.us-west-2.compute.amazonaws.com" -> (known after apply)
      ~ public_ip                            = "54.71.59.113" -> (known after apply)
      ~ secondary_private_ips                = [] -> (known after apply)
      ~ security_groups                      = [
          - "default",
        ] -> (known after apply)
      ~ subnet_id                            = "subnet-093ceeb756a0066c6" -> (known after apply)
        tags                                 = {
            "Email" = "xyz@gmail.coom"
        }
      ~ tenancy                              = "default" -> (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      ~ vpc_security_group_ids               = [
          - "sg-017bab502ac04b90e",
          + "default",
        ]
        # (6 unchanged attributes hidden)

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
          - volume_id             = "vol-09553d532c685a4f1" -> null
          - volume_size           = 8 -> null
          - volume_type           = "standard" -> null
        }
    }

Plan: 1 to add, 0 to change, 1 to destroy.

──────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions
if you run "terraform apply" now.
```


```
$ terraform apply -auto-approve
aws_instance.web_server: Refreshing state... [id=i-0ac69d104126b6ccd]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated
with the following symbols:
-/+ destroy and then create replacement

Terraform will perform the following actions:

  # aws_instance.web_server must be replaced
-/+ resource "aws_instance" "web_server" {
      ~ arn                                  = "arn:aws:ec2:us-west-2:252473277340:instance/i-0ac69d104126b6ccd" -> (known after apply)
      ~ associate_public_ip_address          = true -> (known after apply)
      ~ availability_zone                    = "us-west-2a" -> "us-west-2b" # forces replacement
      ~ cpu_core_count                       = 1 -> (known after apply)
      ~ cpu_threads_per_core                 = 1 -> (known after apply)
      ~ disable_api_stop                     = false -> (known after apply)
      ~ disable_api_termination              = false -> (known after apply)
      ~ ebs_optimized                        = false -> (known after apply)
      - hibernation                          = false -> null
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      ~ id                                   = "i-0ac69d104126b6ccd" -> (known after apply)
      ~ instance_initiated_shutdown_behavior = "stop" -> (known after apply)
      ~ instance_state                       = "running" -> (known after apply)
      ~ ipv6_address_count                   = 0 -> (known after apply)
      ~ ipv6_addresses                       = [] -> (known after apply)
      + key_name                             = (known after apply)
      ~ monitoring                           = false -> (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      ~ placement_partition_number           = 0 -> (known after apply)
      ~ primary_network_interface_id         = "eni-0026ccb61193aba74" -> (known after apply)
      ~ private_dns                          = "ip-172-31-38-12.us-west-2.compute.internal" -> (known after apply)
      ~ private_ip                           = "172.31.38.12" -> (known after apply)
      ~ public_dns                           = "ec2-54-71-59-113.us-west-2.compute.amazonaws.com" -> (known after apply)
      ~ public_ip                            = "54.71.59.113" -> (known after apply)
      ~ secondary_private_ips                = [] -> (known after apply)
      ~ security_groups                      = [
          - "default",
        ] -> (known after apply)
      ~ subnet_id                            = "subnet-093ceeb756a0066c6" -> (known after apply)
        tags                                 = {
            "Email" = "xyz@gmail.coom"
        }
      ~ tenancy                              = "default" -> (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      ~ vpc_security_group_ids               = [
          - "sg-017bab502ac04b90e",
          + "default",
        ]
        # (6 unchanged attributes hidden)

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
          - volume_id             = "vol-09553d532c685a4f1" -> null
          - volume_size           = 8 -> null
          - volume_type           = "standard" -> null
        }
    }

Plan: 1 to add, 0 to change, 1 to destroy.
aws_instance.web_server: Destroying... [id=i-0ac69d104126b6ccd]
aws_instance.web_server: Still destroying... [id=i-0ac69d104126b6ccd, 10s elapsed]
aws_instance.web_server: Still destroying... [id=i-0ac69d104126b6ccd, 20s elapsed]
aws_instance.web_server: Still destroying... [id=i-0ac69d104126b6ccd, 30s elapsed]
aws_instance.web_server: Destruction complete after 32s
aws_instance.web_server: Creating...
aws_instance.web_server: Still creating... [10s elapsed]
aws_instance.web_server: Still creating... [20s elapsed]
aws_instance.web_server: Still creating... [30s elapsed]
aws_instance.web_server: Creation complete after 35s [id=i-0858652b8254289d8]

Apply complete! Resources: 1 added, 0 changed, 1 destroyed.
```


# My requirement is to safe our infrastructure
# Add the lifecycle code -> it will create before destroy

revert the az changes from 2b to 2a and add the below code

lifecycle {
    create_before_destroy = true
  }

$ terraform plan
```
$ terraform plan
aws_instance.web_server: Refreshing state... [id=i-0858652b8254289d8]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated
with the following symbols:
+/- create replacement and then destroy

Terraform will perform the following actions:

  # aws_instance.web_server must be replaced
+/- resource "aws_instance" "web_server" {
      ~ arn                                  = "arn:aws:ec2:us-west-2:252473277340:instance/i-0858652b8254289d8" -> (known after apply)
      ~ associate_public_ip_address          = true -> (known after apply)
      ~ availability_zone                    = "us-west-2b" -> "us-west-2a" # forces replacement
      ~ cpu_core_count                       = 1 -> (known after apply)
      ~ cpu_threads_per_core                 = 1 -> (known after apply)
      ~ disable_api_stop                     = false -> (known after apply)
      ~ disable_api_termination              = false -> (known after apply)
      ~ ebs_optimized                        = false -> (known after apply)
      - hibernation                          = false -> null
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      ~ id                                   = "i-0858652b8254289d8" -> (known after apply)
      ~ instance_initiated_shutdown_behavior = "stop" -> (known after apply)
      ~ instance_state                       = "running" -> (known after apply)
      ~ ipv6_address_count                   = 0 -> (known after apply)
      ~ ipv6_addresses                       = [] -> (known after apply)
      + key_name                             = (known after apply)
      ~ monitoring                           = false -> (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      ~ placement_partition_number           = 0 -> (known after apply)
      ~ primary_network_interface_id         = "eni-00070e2bbdbc7eec7" -> (known after apply)
      ~ private_dns                          = "ip-172-31-22-94.us-west-2.compute.internal" -> (known after apply)
      ~ private_ip                           = "172.31.22.94" -> (known after apply)
      ~ public_dns                           = "ec2-35-86-78-94.us-west-2.compute.amazonaws.com" -> (known after apply)
      ~ public_ip                            = "35.86.78.94" -> (known after apply)
      ~ secondary_private_ips                = [] -> (known after apply)
      ~ security_groups                      = [
          - "default",
        ] -> (known after apply)
      ~ subnet_id                            = "subnet-070b34ee88c1fe521" -> (known after apply)
        tags                                 = {
            "Email" = "xyz@gmail.coom"
        }
      ~ tenancy                              = "default" -> (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      ~ vpc_security_group_ids               = [
          - "sg-017bab502ac04b90e",
          + "default",
        ]
        # (6 unchanged attributes hidden)

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
          - volume_id             = "vol-081f06508ffe18d53" -> null
          - volume_size           = 8 -> null
          - volume_type           = "standard" -> null
        }
    }

Plan: 1 to add, 0 to change, 1 to destroy.

──────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions
if you run "terraform apply" now.
```

$ terraform apply -auto-approve
```
$ terraform apply -auto-approve
aws_instance.web_server: Refreshing state... [id=i-0858652b8254289d8]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated
with the following symbols:
+/- create replacement and then destroy

Terraform will perform the following actions:

  # aws_instance.web_server must be replaced
+/- resource "aws_instance" "web_server" {
      ~ arn                                  = "arn:aws:ec2:us-west-2:252473277340:instance/i-0858652b8254289d8" -> (known after apply)
      ~ associate_public_ip_address          = true -> (known after apply)
      ~ availability_zone                    = "us-west-2b" -> "us-west-2a" # forces replacement
      ~ cpu_core_count                       = 1 -> (known after apply)
      ~ cpu_threads_per_core                 = 1 -> (known after apply)
      ~ disable_api_stop                     = false -> (known after apply)
      ~ disable_api_termination              = false -> (known after apply)
      ~ ebs_optimized                        = false -> (known after apply)
      - hibernation                          = false -> null
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      ~ id                                   = "i-0858652b8254289d8" -> (known after apply)
      ~ instance_initiated_shutdown_behavior = "stop" -> (known after apply)
      ~ instance_state                       = "running" -> (known after apply)
      ~ ipv6_address_count                   = 0 -> (known after apply)
      ~ ipv6_addresses                       = [] -> (known after apply)
      + key_name                             = (known after apply)
      ~ monitoring                           = false -> (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      ~ placement_partition_number           = 0 -> (known after apply)
      ~ primary_network_interface_id         = "eni-00070e2bbdbc7eec7" -> (known after apply)
      ~ private_dns                          = "ip-172-31-22-94.us-west-2.compute.internal" -> (known after apply)
      ~ private_ip                           = "172.31.22.94" -> (known after apply)
      ~ public_dns                           = "ec2-35-86-78-94.us-west-2.compute.amazonaws.com" -> (known after apply)
      ~ public_ip                            = "35.86.78.94" -> (known after apply)
      ~ secondary_private_ips                = [] -> (known after apply)
      ~ security_groups                      = [
          - "default",
        ] -> (known after apply)
      ~ subnet_id                            = "subnet-070b34ee88c1fe521" -> (known after apply)
        tags                                 = {
            "Email" = "xyz@gmail.coom"
        }
      ~ tenancy                              = "default" -> (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      ~ vpc_security_group_ids               = [
          - "sg-017bab502ac04b90e",
          + "default",
        ]
        # (6 unchanged attributes hidden)

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
          - volume_id             = "vol-081f06508ffe18d53" -> null
          - volume_size           = 8 -> null
          - volume_type           = "standard" -> null
        }
    }

Plan: 1 to add, 0 to change, 1 to destroy.
aws_instance.web_server: Creating...
aws_instance.web_server: Still creating... [10s elapsed]
aws_instance.web_server: Still creating... [20s elapsed]
aws_instance.web_server: Still creating... [30s elapsed]
aws_instance.web_server: Creation complete after 37s [id=i-020ab99535f67f6b4]
aws_instance.web_server (deposed object ac4ded33): Destroying... [id=i-0858652b8254289d8]
aws_instance.web_server: Still destroying... [id=i-0858652b8254289d8, 10s elapsed]
aws_instance.web_server: Still destroying... [id=i-0858652b8254289d8, 20s elapsed]
aws_instance.web_server: Still destroying... [id=i-0858652b8254289d8, 30s elapsed]
aws_instance.web_server: Destruction complete after 31s

Apply complete! Resources: 1 added, 0 changed, 1 destroyed.
```


# use prevent_destroy = true to restrict the server to drop

```
lifecycle {
    # create_before_destroy = true
    prevent_destroy = true
  }
```

```
$ terraform destroy -auto-approve
aws_instance.web_server: Refreshing state... [id=i-020ab99535f67f6b4]
╷
│ Error: Instance cannot be destroyed
│ 
│   on main.tf line 1:
│    1: resource "aws_instance" "web_server" {
│ 
│ Resource aws_instance.web_server has lifecycle.prevent_destroy set, but the plan calls for this resource to be
│ destroyed. To avoid this error and continue with the plan, either disable lifecycle.prevent_destroy or reduce
│ the scope of the plan using the -target flag.
```


# Try to add a tag like Name = random manually and remove the meta args

# Execute plan and apply 

$ terraform plan
```
$ terraform plan
aws_instance.web_server: Refreshing state... [id=i-020ab99535f67f6b4]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated
with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # aws_instance.web_server will be updated in-place
  ~ resource "aws_instance" "web_server" {
        id                                   = "i-020ab99535f67f6b4"
      ~ tags                                 = {
            "Email" = "xyz@gmail.coom"
          - "Name"  = "random" -> null
        }
      ~ tags_all                             = {
          - "Name"  = "random" -> null
            # (1 unchanged element hidden)
        }
      ~ vpc_security_group_ids               = [
          - "sg-017bab502ac04b90e",
          + "default",
        ]
        # (29 unchanged attributes hidden)

        # (8 unchanged blocks hidden)
    }

Plan: 0 to add, 1 to change, 0 to destroy.

──────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions
if you run "terraform apply" now.
```


$ terraform apply -auto-approve
```
$ terraform apply -auto-approve
aws_instance.web_server: Refreshing state... [id=i-020ab99535f67f6b4]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated
with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # aws_instance.web_server will be updated in-place
  ~ resource "aws_instance" "web_server" {
        id                                   = "i-020ab99535f67f6b4"
      ~ tags                                 = {
            "Email" = "xyz@gmail.coom"
          - "Name"  = "random" -> null
        }
      ~ tags_all                             = {
          - "Name"  = "random" -> null
            # (1 unchanged element hidden)
        }
      ~ vpc_security_group_ids               = [
          - "sg-017bab502ac04b90e",
          + "default",
        ]
        # (29 unchanged attributes hidden)

        # (8 unchanged blocks hidden)
    }

Plan: 0 to add, 1 to change, 0 to destroy.
aws_instance.web_server: Modifying... [id=i-020ab99535f67f6b4]
╷
│ Error: updating EC2 Instance (i-020ab99535f67f6b4): modifying network interface: InvalidGroup.NotFound: The security group 'default' does not exist
│       status code: 400, request id: edbae2d6-789b-49b6-9a22-c4e78c027e7f
│ 
│   with aws_instance.web_server,
│   on main.tf line 1, in resource "aws_instance" "web_server":
│    1: resource "aws_instance" "web_server" {
```


# Tag added manually were removed once you apply the changes, dafault nature of terraform
# But i donot want the changes to be removed

# Add again "Name = random" tag manually and apply the changes

```
$ terraform plan
aws_instance.web_server: Refreshing state... [id=i-020ab99535f67f6b4]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated
with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # aws_instance.web_server will be updated in-place
  ~ resource "aws_instance" "web_server" {
        id                                   = "i-020ab99535f67f6b4"
      ~ tags                                 = {
            "Email" = "xyz@gmail.coom"
          - "Name"  = "random" -> null
        }
      ~ tags_all                             = {
          - "Name"  = "random" -> null
            # (1 unchanged element hidden)
        }
        # (30 unchanged attributes hidden)

        # (8 unchanged blocks hidden)
    }

Plan: 0 to add, 1 to change, 0 to destroy.

──────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions
if you run "terraform apply" now.
```

# Add the below code and apply the changes, it won't remove the changes and also auto-refresh we can use

```
lifecycle {
    ignore_changes = [ tags, ]
  }
```

$ terraform apply -auto-approve
```
$ terraform apply -auto-approve
aws_instance.web_server: Refreshing state... [id=i-020ab99535f67f6b4]

No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration and found no differences, so no changes
are needed.

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.
```


# Again add another tag "Team = dev" and apply the changes

$ terraform apply -auto-approve
```
$ terraform apply -auto-approve
aws_instance.web_server: Refreshing state... [id=i-020ab99535f67f6b4]

No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration and found no differences, so no changes
are needed.

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.
```


$ terraform destroy -auto-approve
```
$ terraform destroy -auto-approve
aws_instance.web_server: Refreshing state... [id=i-020ab99535f67f6b4]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated
with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_instance.web_server will be destroyed
  - resource "aws_instance" "web_server" {
      - ami                                  = "ami-830c94e3" -> null
      - arn                                  = "arn:aws:ec2:us-west-2:252473277340:instance/i-020ab99535f67f6b4" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-west-2a" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-020ab99535f67f6b4" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - placement_partition_number           = 0 -> null
      - primary_network_interface_id         = "eni-05415837ff327bedc" -> null
      - private_dns                          = "ip-172-31-36-203.us-west-2.compute.internal" -> null
      - private_ip                           = "172.31.36.203" -> null
      - public_dns                           = "ec2-34-219-229-221.us-west-2.compute.amazonaws.com" -> null
      - public_ip                            = "34.219.229.221" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [
          - "default",
        ] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-093ceeb756a0066c6" -> null
      - tags                                 = {
          - "Email" = "xyz@gmail.coom"
          - "Name"  = "random"
          - "Team"  = "dev"
        } -> null
      - tags_all                             = {
          - "Email" = "xyz@gmail.coom"
          - "Name"  = "random"
          - "Team"  = "dev"
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
          - volume_id             = "vol-02cc0cf4a3d1a4475" -> null
          - volume_size           = 8 -> null
          - volume_type           = "standard" -> null
        }
    }

Plan: 0 to add, 0 to change, 1 to destroy.
aws_instance.web_server: Destroying... [id=i-020ab99535f67f6b4]
aws_instance.web_server: Still destroying... [id=i-020ab99535f67f6b4, 10s elapsed]
aws_instance.web_server: Still destroying... [id=i-020ab99535f67f6b4, 20s elapsed]
aws_instance.web_server: Still destroying... [id=i-020ab99535f67f6b4, 30s elapsed]
aws_instance.web_server: Destruction complete after 33s

Destroy complete! Resources: 1 destroyed.
```