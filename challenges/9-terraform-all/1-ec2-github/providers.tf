terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}

# Configure the GitHub Provider
provider "github" {
    # token = var.token -> developer setting in github
    token = ""
}