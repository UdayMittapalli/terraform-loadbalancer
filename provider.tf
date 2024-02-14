terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  # S3 bucket for storing state file in remote backend
  backend "s3" {
    bucket = "terraform-statefiles-udey"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}
