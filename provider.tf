provider "aws" {
  region = "us-east-1"
}
terraform {
  backend "s3" {
    # values will be injected from Jenkins
  }
}