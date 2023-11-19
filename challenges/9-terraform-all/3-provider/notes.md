$ terraform version
```
$ terraform version
Terraform v1.5.4
on darwin_amd64
+ provider registry.terraform.io/hashicorp/aws v4.67.0

Your version of Terraform is out of date! The latest version
is 1.6.4. You can update by downloading from https://www.terraform.io/downloads.html
```

$ terraform init
```
$ terraform init

Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/aws versions matching "~> 4.16"...
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


# Cross check the provider version, it has downloaded as specified

# Now, change the version in provider.tf from version = "~> 4.14" to 3.10, lower the version, it will throw an error


$ terraform init
```
$ terraform init

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/aws from the dependency lock file
╷
│ Error: Failed to query available provider packages
│ 
│ Could not retrieve the list of available versions for provider hashicorp/aws: locked provider
│ registry.terraform.io/hashicorp/aws 4.67.0 does not match configured version constraint ~> 3.10; must use terraform init
│ -upgrade to allow selection of new versions
```


# Two possible ways to handle

# First is to remove the lock file and re-execute, so that it won't be able to see the existing file

$ terraform init
```
$ terraform init

Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/aws versions matching "~> 3.10"...
- Installing hashicorp/aws v3.76.1...
- Installed hashicorp/aws v3.76.1 (signed by HashiCorp)

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


# Change the version again in provider.tf file 
# Second use terraform init -upgrade without removing the lock file

$ terraform init
```
$ terraform init

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/aws from the dependency lock file
╷
│ Error: Failed to query available provider packages
│ 
│ Could not retrieve the list of available versions for provider hashicorp/aws: locked provider
│ registry.terraform.io/hashicorp/aws 3.76.1 does not match configured version constraint ~> 2.10; must use terraform init
│ -upgrade to allow selection of new versions
```

$ terraform init -upgrade
```
$ terraform init -upgrade

Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/aws versions matching "~> 2.10"...
- Installing hashicorp/aws v2.70.4...
- Installed hashicorp/aws v2.70.4 (signed by HashiCorp)

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

# No issue in case if you want to upgrade

# remove the version line from providers.tf and .terraform file

$ rm -rf .terraform 
# version = "~> 2.10"

# Now, it will take reference from lock file and download

$ terraform init
```
$ terraform init

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/aws from the dependency lock file
- Installing hashicorp/aws v2.70.4...
- Installed hashicorp/aws v2.70.4 (signed by HashiCorp)

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```


# Next scenario: ~>2.0 add in version, it will download the lastest 2 series 2.70.4
# cross check from the UI

# we haven't removed the lock file so need to add upgrade

$ terraform init -upgrade
```
$ terraform init -upgrade

Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/aws versions matching "~> 2.0"...
- Using previously-installed hashicorp/aws v2.70.4

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```


# If we change like this
#       version = ">= 3.10, <= 3.50"

$ terraform init -upgrade
```
$ terraform init -upgrade

Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/aws versions matching ">= 3.10.0, <= 3.50.0"...
- Installing hashicorp/aws v3.50.0...
- Installed hashicorp/aws v3.50.0 (signed by HashiCorp)

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


# If we change like this, it will throw an error in case if specifi version not available
# version = "2.70.5"

$ terraform init -upgrade
```
$ terraform init -upgrade

Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/aws versions matching "2.70.5"...
╷
│ Error: Failed to query available provider packages
│ 
│ Could not retrieve the list of available versions for provider hashicorp/aws: no available releases match the given
│ constraints 2.70.5
```

