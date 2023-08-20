[Link](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-change)

# Now update the ami of your instance. 
# Change the aws_instance.app_server resource under the provider block in main.tf by replacing the current AMI ID with a new one.

$ terraform init
$ terraform plan
$ terraform fmt
$ terraform validate
$ terraform apply --auto-approve
$ terraform show
$ terraform state list
$ terraform destroy --auto-approve

# It will re-create the new instance with the different AMI ID