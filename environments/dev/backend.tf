terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
  }
  
  backend "s3" {
    bucket = "demo-terraformbucket-05"
    key    = "environments/dev/terraform.tfstate"
    region = "ap-southeast-1"
  }
}

provider "aws" {
  region = var.aws_region
}
