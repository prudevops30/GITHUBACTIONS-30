/*# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}
*/

terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0" #optional but recommended in production
    }
  }
}

backend "s3" {
  bucket = "bootcamp30"
  acl    = "prod/terraform.tfstate"
  region = "us-east-2"
}