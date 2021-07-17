terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.50.0"
    }
  }
}
provider "aws" {
  region = "eu-central-1"
}
terraform {
  backend "s3" {
    bucket = "gitlab-terra-uber"
    key    = "global/s3/terraform.tfstate"
    region = "eu-central-1"
  }
}
