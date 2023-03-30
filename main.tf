provider "aws" {
    region = "us-east-2"
   shared_credentials_file = "$HOME/.aws/credentials"

}

resource "aws_vpc" "actions" {
    cidr_block = "10.0.0.0/16"

    tags = {
      "name" = "class30"
       Team = "G7"
    }
    
  
}
