provider "aws" {
  region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket = "iac-bucket0101"
    key    = "iac-jenkins.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}