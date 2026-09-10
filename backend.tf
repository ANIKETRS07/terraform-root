terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

   backend "s3" { 
    bucket = "myproject-terraform-state"
    key    = "terraform.tfstate"        
    region = "ap-south-1"
    dynamodb_table = "myproject-terraform-state-lock"
    encrypt = true

}

}