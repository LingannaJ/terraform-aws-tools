terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "shivdev-remote-state"
    key    = "jenkins-cicd"
    region = "us-east-1"
    dynamodb_table = "mydynamoDB-lock"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}