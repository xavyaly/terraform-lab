# Meta Arguments:

count
for_each
depends_on
lifecycle
provider
provisioners
connections

----------------------------------------------------------------

# for_each s3 buckets 

$ terraform plan
```
$ terraform plan
 
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated
with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_s3_bucket.pri_buckets["dev"] will be created
  + resource "aws_s3_bucket" "pri_buckets" {
      + acceleration_status         = (known after apply)
      + acl                         = "private"
      + arn                         = (known after apply)
      + bucket                      = "dev-dev-s3-bucket"
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
      + tags                        = {
          + "env"            = "dev"
          + "s3-bucket-name" = "dev-dev-s3-bucket"
          + "value"          = "dev-s3-bucket"
        }
      + tags_all                    = {
          + "env"            = "dev"
          + "s3-bucket-name" = "dev-dev-s3-bucket"
          + "value"          = "dev-s3-bucket"
        }
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)
    }

  # aws_s3_bucket.pri_buckets["pre-prod"] will be created
  + resource "aws_s3_bucket" "pri_buckets" {
      + acceleration_status         = (known after apply)
      + acl                         = "private"
      + arn                         = (known after apply)
      + bucket                      = "pre-prod-pre-prod-s3-bucket"
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
      + tags                        = {
          + "env"            = "pre-prod"
          + "s3-bucket-name" = "pre-prod-pre-prod-s3-bucket"
          + "value"          = "pre-prod-s3-bucket"
        }
      + tags_all                    = {
          + "env"            = "pre-prod"
          + "s3-bucket-name" = "pre-prod-pre-prod-s3-bucket"
          + "value"          = "pre-prod-s3-bucket"
        }
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)
    }

  # aws_s3_bucket.pri_buckets["prod"] will be created
  + resource "aws_s3_bucket" "pri_buckets" {
      + acceleration_status         = (known after apply)
      + acl                         = "private"
      + arn                         = (known after apply)
      + bucket                      = "prod-prod-s3-bucket"
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
      + tags                        = {
          + "env"            = "prod"
          + "s3-bucket-name" = "prod-prod-s3-bucket"
          + "value"          = "prod-s3-bucket"
        }
      + tags_all                    = {
          + "env"            = "prod"
          + "s3-bucket-name" = "prod-prod-s3-bucket"
          + "value"          = "prod-s3-bucket"
        }
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)
    }

  # aws_s3_bucket.pri_buckets["stage"] will be created
  + resource "aws_s3_bucket" "pri_buckets" {
      + acceleration_status         = (known after apply)
      + acl                         = "private"
      + arn                         = (known after apply)
      + bucket                      = "stage-stage-s3-bucket"
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
      + tags                        = {
          + "env"            = "stage"
          + "s3-bucket-name" = "stage-stage-s3-bucket"
          + "value"          = "stage-s3-bucket"
        }
      + tags_all                    = {
          + "env"            = "stage"
          + "s3-bucket-name" = "stage-stage-s3-bucket"
          + "value"          = "stage-s3-bucket"
        }
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)
    }

Plan: 4 to add, 0 to change, 0 to destroy.
╷
│ Warning: Argument is deprecated
│ 
│   with aws_s3_bucket.pri_buckets,
│   on main.tf line 10, in resource "aws_s3_bucket" "pri_buckets":
│   10:   acl = "private"
│ 
│ Use the aws_s3_bucket_acl resource instead
│ 
│ (and 4 more similar warnings elsewhere)
╵

──────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions
if you run "terraform apply" now.
```


$ terraform fmt
```
$ terraform fmt
main.tf
variables.tf
```


$ terraform validate
```
$ terraform validate
╷
│ Warning: Argument is deprecated
│ 
│   with aws_s3_bucket.pri_buckets,
│   on main.tf line 10, in resource "aws_s3_bucket" "pri_buckets":
│   10:   acl = "private"
│ 
│ Use the aws_s3_bucket_acl resource instead
╵
Success! The configuration is valid, but there were some validation warnings as shown above.
```


# for iam users 

$ terraform plan
```
$ terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated
with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_iam_user.iam_users["auser"] will be created
  + resource "aws_iam_user" "iam_users" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "auser"
      + path          = "/"
      + tags_all      = (known after apply)
      + unique_id     = (known after apply)
    }

  # aws_iam_user.iam_users["buser"] will be created
  + resource "aws_iam_user" "iam_users" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "buser"
      + path          = "/"
      + tags_all      = (known after apply)
      + unique_id     = (known after apply)
    }

  # aws_iam_user.iam_users["cuser"] will be created
  + resource "aws_iam_user" "iam_users" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "cuser"
      + path          = "/"
      + tags_all      = (known after apply)
      + unique_id     = (known after apply)
    }

Plan: 3 to add, 0 to change, 0 to destroy.

──────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions
if you run "terraform apply" now.
```



