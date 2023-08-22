resource "aws_s3_bucket" "tf_state_bucket" {
  bucket = "my-terraform-state-buckets"
  acl    = "private"

  versioning {
    enabled = true
  }
}

resource "aws_dynamodb_table" "tf_state_lock" {
  name         = "my-terraform-state-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

data "aws_s3_bucket" "existing_bucket" {
  bucket = "my-terraform-state-buckets"
}
terraform {
  backend "s3" {
    bucket         = "my-terraform-state-buckets"
    key            = "terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "my-terraform-state-lock"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}