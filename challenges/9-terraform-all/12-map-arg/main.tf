// s3 bucket using for_each loop
/*
resource "aws_s3_bucket" "pri_buckets" {
  for_each = {
    "dev"      = "dev-s3-bucket"
    "stage"    = "stage-s3-bucket"
    "pre-prod" = "pre-prod-s3-bucket"
    "prod"     = "prod-s3-bucket"
  }

  bucket = "${each.key}-${each.value}"
  acl    = "private"

  tags = {
    value          = each.value
    env            = each.key
    s3-bucket-name = "${each.key}-${each.value}"
  }
}
*/

resource "aws_iam_user" "iam_users" {
  for_each = toset(["auser", "buser", "cuser"])
  name     = each.key
  #name = each.value
}