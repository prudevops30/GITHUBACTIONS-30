provider "aws" {
    region = "us-east-2"

}

resource "aws_vpc" "actions" {
    cidr_block = "10.0.0.0/16"

    tags = {
      "name" = "class30"
       Team = "G7"
    }
    
  
}

provider "aws" {
  shared_credentials_file = "$HOME/.aws/credentials"
  #profile                 = "default"
  region                  = "us-east-2"
}