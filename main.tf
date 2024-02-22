terraform {
  required_version = "1.7.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.44.0"
    }
  }

  backend "s3" {
    region = "us-east-2"
  }

}

provider "aws" {
  region  = "us-east-2"
 

  default_tags {
    tags = {
      Project   = "Terraform GHA setup"
      CreatedAt = "2024-15-02"
      ManagedBy = "Terraform"
      Owner     = "João Victor"
    }
  }
}
