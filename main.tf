provider "aws" {
  region =  "us-east-2"
}

resource "aws_vpc" "actions" {
    cidr_block = "10.0.0.0/16"

    tags = {
      "name" = "class30"
       Team = "Devops"
       Environment = "Prod"
    }
}

terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0" #optional but recommended in production
    }
  }
  backend "s3" {
  bucket = "bootcamp30"
  key    = "prod/terraform.tfstate"
  region = "us-east-2"
  }
}


