terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.7.0"
    }
  }
}

provider "aws" {
    region = "ap-south-1"
} 

terraform {
  backend "s3" {
    bucket = "kavedi-terrafom-project"
    key    = "environments/dev/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "kavedi-terraform-project-dynamodb"
  }
}