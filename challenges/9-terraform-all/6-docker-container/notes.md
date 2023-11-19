# 2 Manual Methods

# First
# Create an instance -> Login to EC2 and Install the below steps

# Second
# Create an instance -> Add user data

# User Data
```
#!/bin/sh

yum update -y
yum install docker -y
service docker start
docker pull nginx:alpine
docker run -it -d -name doc_ -p 80:80 nginx:apline
```

# Cross check to login to instance

# Through Terraform 

# https://registry.terraform.io/providers/serverscom/serverscom/latest/docs/guides/user-data


# Execution

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
main.tf
```

$ terraform validate
```
$ terraform validate

Success! The configuration is valid.
```

$ terraform plan -out=dev.tfvars
```
$ terraform plan -out=dev.tfvars

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

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
      + user_data                            = "7549fb3374df6b9f3c5bdc969edf9cea93bda382"
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = [
          + "default",
        ]
    }

Plan: 1 to add, 0 to change, 0 to destroy.

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Saved the plan to: dev.tfvars

To perform exactly these actions, run the following command to apply:
    terraform apply "dev.tfvars"
Javeds-MacBook-Air:6-docker-container javedalam$ 
Javeds-MacBook-Air:6-docker-container javedalam$ terraform apply "dev.tfvars"
aws_instance.web_server: Creating...
aws_instance.web_server: Still creating... [10s elapsed]
aws_instance.web_server: Still creating... [20s elapsed]
aws_instance.web_server: Still creating... [30s elapsed]
aws_instance.web_server: Still creating... [40s elapsed]
aws_instance.web_server: Still creating... [50s elapsed]
aws_instance.web_server: Still creating... [1m0s elapsed]
aws_instance.web_server: Still creating... [1m10s elapsed]
aws_instance.web_server: Creation complete after 1m19s [id=i-03db3ba3c7c16439f]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

$ terraform destroy --auto-approve
```
$ terraform destroy --auto-approve
aws_instance.web_server: Refreshing state... [id=i-03db3ba3c7c16439f]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_instance.web_server will be destroyed
  - resource "aws_instance" "web_server" {
      - ami                                  = "ami-830c94e3" -> null
      - arn                                  = "arn:aws:ec2:us-west-2:252473277340:instance/i-03db3ba3c7c16439f" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-west-2b" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-03db3ba3c7c16439f" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - placement_partition_number           = 0 -> null
      - primary_network_interface_id         = "eni-072ba2995f0761392" -> null
      - private_dns                          = "ip-172-31-26-182.us-west-2.compute.internal" -> null
      - private_ip                           = "172.31.26.182" -> null
      - public_dns                           = "ec2-34-209-81-108.us-west-2.compute.amazonaws.com" -> null
      - public_ip                            = "34.209.81.108" -> null
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
      - user_data                            = "7549fb3374df6b9f3c5bdc969edf9cea93bda382" -> null
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
          - volume_id             = "vol-058ac8d0b7fd764bd" -> null
          - volume_size           = 8 -> null
          - volume_type           = "standard" -> null
        }
    }

Plan: 0 to add, 0 to change, 1 to destroy.
aws_instance.web_server: Destroying... [id=i-03db3ba3c7c16439f]
aws_instance.web_server: Still destroying... [id=i-03db3ba3c7c16439f, 10s elapsed]
aws_instance.web_server: Still destroying... [id=i-03db3ba3c7c16439f, 20s elapsed]
aws_instance.web_server: Destruction complete after 22s

Destroy complete! Resources: 1 destroyed.
```
