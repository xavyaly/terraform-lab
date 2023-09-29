terraform {
  cloud {
    organization = "hashicorp-cloud"
    workspaces {
      name = "hashicorp-ws"
    }
  }
}

terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}