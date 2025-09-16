terraform {
  required_version = ">= 1.0"
  backend "local" {
    path = "./tf_state/terraform.tfstate"
  }
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
