terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }


  backend "s3" {
    bucket = "tf-4"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
    dynamodb_table = "test"
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}


