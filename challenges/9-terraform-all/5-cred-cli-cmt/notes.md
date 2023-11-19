# Use CLI to hide the credentials

$ aws configure


$ terraform init
$ terraform plan -out=dev.tfvars
$ terraform apply "dev.tfvars"
$ terraform destroy "dev.tfvars"