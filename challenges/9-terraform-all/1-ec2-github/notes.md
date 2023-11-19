$ terraform init

$ terraform plan

$ terraform apply --auto-approve

$ terraform plan
```
$ terraform plan
aws_instance.web_server: Refreshing state... [id=i-07fcef7eb6af93bdd]

No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration and found no differences, so no changes are
needed.
```

# Actual and desired are same because we haven't explicitly defined SG in tf code 

# Now, Suppose we removed the SG manually from default to different SG in AWS without disrupting tf code 
# Below is present in terraform.tfstate file
"security_groups": [
              "default"
            ],


# Execute the refresh command

$ terraform apply -refresh-only --auto-approve
```
$ terraform apply -refresh-only --auto-approve
aws_instance.web_server: Refreshing state... [id=i-07fcef7eb6af93bdd]

Note: Objects have changed outside of Terraform

Terraform detected the following changes made outside of Terraform since the last "terraform apply" which may have affected
this plan:

  # aws_instance.web_server has changed
  ~ resource "aws_instance" "web_server" {
        id                                   = "i-07fcef7eb6af93bdd"
      ~ security_groups                      = [
          - "default",
          + "ec2group",
        ]
        tags                                 = {
            "Email" = "xyz@gmail.coom"
            "Name"  = "Operations"
        }
      ~ vpc_security_group_ids               = [
          - "sg-017bab502ac04b90e",
          + "sg-0681d51cbae339031",
        ]
        # (29 unchanged attributes hidden)

        # (8 unchanged blocks hidden)
    }


This is a refresh-only plan, so Terraform will not take any actions to undo these. If you were expecting these changes then
you can apply this plan to record the updated values in the Terraform state without changing any remote objects.

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.
```

# Verify the terraform.tfstate and terraform.tfstate.backup files

```
"security_groups": [
              "ec2group"
            ],
```

```
"security_groups": [
              "default"
            ],
```

# Second scenario with github providers
# Update providers.tf and github.tf files

$ terraform init

```
$ terraform init

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/aws from the dependency lock file
- Finding integrations/github versions matching "~> 5.0"...
- Using previously-installed hashicorp/aws v4.67.0
- Installing integrations/github v5.42.0...
- Installed integrations/github v5.42.0 (signed by a HashiCorp partner, key ID 38027F80D7FD5FB2)

Partner and community providers are signed by their developers.
If you'd like to know more about provider signing, you can read about it here:
https://www.terraform.io/docs/cli/plugins/signing.html

Terraform has made some changes to the provider dependency selections recorded
in the .terraform.lock.hcl file. Review those changes and commit them to your
version control system if they represent changes you intended to make.

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
aws_instance.web_server: Refreshing state... [id=i-07fcef7eb6af93bdd]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # github_repository.example will be created
  + resource "github_repository" "example" {
      + allow_auto_merge            = false
      + allow_merge_commit          = true
      + allow_rebase_merge          = true
      + allow_squash_merge          = true
      + archived                    = false
      + default_branch              = (known after apply)
      + delete_branch_on_merge      = false
      + etag                        = (known after apply)
      + full_name                   = (known after apply)
      + git_clone_url               = (known after apply)
      + html_url                    = (known after apply)
      + http_clone_url              = (known after apply)
      + id                          = (known after apply)
      + merge_commit_message        = "PR_TITLE"
      + merge_commit_title          = "MERGE_MESSAGE"
      + name                        = "tfcodes"
      + node_id                     = (known after apply)
      + primary_language            = (known after apply)
      + private                     = (known after apply)
      + repo_id                     = (known after apply)
      + squash_merge_commit_message = "COMMIT_MESSAGES"
      + squash_merge_commit_title   = "COMMIT_OR_PR_TITLE"
      + ssh_clone_url               = (known after apply)
      + svn_url                     = (known after apply)
      + topics                      = (known after apply)
      + visibility                  = "private"
    }

Plan: 1 to add, 0 to change, 0 to destroy.

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you
run "terraform apply" now.
```

$ terraform apply --auto-approve
```
$ terraform apply --auto-approve
aws_instance.web_server: Refreshing state... [id=i-07fcef7eb6af93bdd]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # github_repository.example will be created
  + resource "github_repository" "example" {
      + allow_auto_merge            = false
      + allow_merge_commit          = true
      + allow_rebase_merge          = true
      + allow_squash_merge          = true
      + archived                    = false
      + default_branch              = (known after apply)
      + delete_branch_on_merge      = false
      + etag                        = (known after apply)
      + full_name                   = (known after apply)
      + git_clone_url               = (known after apply)
      + html_url                    = (known after apply)
      + http_clone_url              = (known after apply)
      + id                          = (known after apply)
      + merge_commit_message        = "PR_TITLE"
      + merge_commit_title          = "MERGE_MESSAGE"
      + name                        = "tfcodes"
      + node_id                     = (known after apply)
      + primary_language            = (known after apply)
      + private                     = (known after apply)
      + repo_id                     = (known after apply)
      + squash_merge_commit_message = "COMMIT_MESSAGES"
      + squash_merge_commit_title   = "COMMIT_OR_PR_TITLE"
      + ssh_clone_url               = (known after apply)
      + svn_url                     = (known after apply)
      + topics                      = (known after apply)
      + visibility                  = "private"
    }

Plan: 1 to add, 0 to change, 0 to destroy.
github_repository.example: Creating...
github_repository.example: Creation complete after 6s [id=tfcodes]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

# Cross check in github.com -> a new private repo "tfcodes" were created 

# Cross check in terraform.tfstate file
```
      "provider": "provider[\"registry.terraform.io/integrations/github\"]",
```

# It seems we can create as many resources to append as many providers 


$ terraform destroy --auto-approve
```
$ terraform destroy --auto-approve
github_repository.example: Refreshing state... [id=tfcodes]
aws_instance.web_server: Refreshing state... [id=i-07fcef7eb6af93bdd]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_instance.web_server will be destroyed
  - resource "aws_instance" "web_server" {
      - ami                                  = "ami-830c94e3" -> null
      - arn                                  = "arn:aws:ec2:us-west-2:252473277340:instance/i-07fcef7eb6af93bdd" -> null
      - associate_public_ip_address          = true -> null
      - availability_zone                    = "us-west-2b" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_stop                     = false -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-07fcef7eb6af93bdd" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - placement_partition_number           = 0 -> null
      - primary_network_interface_id         = "eni-05b8abe73648d6bdd" -> null
      - private_dns                          = "ip-172-31-29-152.us-west-2.compute.internal" -> null
      - private_ip                           = "172.31.29.152" -> null
      - public_dns                           = "ec2-54-244-70-52.us-west-2.compute.amazonaws.com" -> null
      - public_ip                            = "54.244.70.52" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [
          - "ec2group",
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
          - "sg-0681d51cbae339031",
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
          - volume_id             = "vol-0e29ab93f0b617046" -> null
          - volume_size           = 8 -> null
          - volume_type           = "standard" -> null
        }
    }

  # github_repository.example will be destroyed
  - resource "github_repository" "example" {
      - allow_auto_merge            = false -> null
      - allow_merge_commit          = true -> null
      - allow_rebase_merge          = true -> null
      - allow_squash_merge          = true -> null
      - allow_update_branch         = false -> null
      - archived                    = false -> null
      - default_branch              = "main" -> null
      - delete_branch_on_merge      = false -> null
      - etag                        = "W/\"a77dbad05b083c10b4d71f97401fae23f15f7118c464d2fc80d0def63cd99119\"" -> null
      - full_name                   = "xavyaly/tfcodes" -> null
      - git_clone_url               = "git://github.com/xavyaly/tfcodes.git" -> null
      - has_discussions             = false -> null
      - has_downloads               = false -> null
      - has_issues                  = false -> null
      - has_projects                = false -> null
      - has_wiki                    = false -> null
      - html_url                    = "https://github.com/xavyaly/tfcodes" -> null
      - http_clone_url              = "https://github.com/xavyaly/tfcodes.git" -> null
      - id                          = "tfcodes" -> null
      - is_template                 = false -> null
      - merge_commit_message        = "PR_TITLE" -> null
      - merge_commit_title          = "MERGE_MESSAGE" -> null
      - name                        = "tfcodes" -> null
      - node_id                     = "R_kgDOKvT1YQ" -> null
      - private                     = true -> null
      - repo_id                     = 720696673 -> null
      - squash_merge_commit_message = "COMMIT_MESSAGES" -> null
      - squash_merge_commit_title   = "COMMIT_OR_PR_TITLE" -> null
      - ssh_clone_url               = "git@github.com:xavyaly/tfcodes.git" -> null
      - svn_url                     = "https://github.com/xavyaly/tfcodes" -> null
      - topics                      = [] -> null
      - visibility                  = "private" -> null
      - vulnerability_alerts        = false -> null
    }

Plan: 0 to add, 0 to change, 2 to destroy.
github_repository.example: Destroying... [id=tfcodes]
aws_instance.web_server: Destroying... [id=i-07fcef7eb6af93bdd]
aws_instance.web_server: Still destroying... [id=i-07fcef7eb6af93bdd, 10s elapsed]
aws_instance.web_server: Still destroying... [id=i-07fcef7eb6af93bdd, 20s elapsed]
aws_instance.web_server: Destruction complete after 23s
╷
│ Error: DELETE https://api.github.com/repos/xavyaly/tfcodes: 403 Must have admin rights to Repository. []
```


# Notes: I removed tfcodes repo manually


$ terraform destroy --auto-approve
```
$ terraform destroy --auto-approve
github_repository.example: Refreshing state... [id=tfcodes]

No changes. No objects need to be destroyed.

Either you have not created any objects yet or the existing objects were already deleted outside of Terraform.

Destroy complete! Resources: 0 destroyed.
```


