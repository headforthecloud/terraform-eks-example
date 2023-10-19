terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    region         = "eu-west-1"
    bucket         = "de-tf-state-v2"
    key            = "nwg-eks-test"
    dynamodb_table = "de-tf-state-v2"

  }
}

# Configure the AWS Provider
provider "aws" {
  region  = "eu-west-2"
  profile = "ecs-dig-academy-admin"
  default_tags {
    tags = {
        Contact = "simon.hanmer@globallogic.com"
        Project = "NWG EKS Cluster Test"
    }
  }
}