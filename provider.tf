terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.4.0"
    }
    
    ansible = {                       ### ansible provider ###
      source = "ansible/ansible"
      version = "1.1.0"
    }

  }
  backend "s3" {                                  ### backend ###
    bucket = "terraform-state-851725528249"
    key = "./terraform.tfstate"
 } 
}

provider "aws" {
}
