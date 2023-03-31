provider "aws" {
  region =  "us-east-2"
}

resource "aws_vpc" "actions" {
    cidr_block = "10.0.0.0/16"

    tags = {
      Name = "class30"
       Team = "G7"
       Environment = "Prod"
       Division = "HR"
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
  bucket = "bootcamp30-76-prudence"
  key    = "prod/terraform.tfstate"
  region = "us-east-2"
  }
}


