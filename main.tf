# configure aws provider
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# stores the terraform state file in an S3 bucket
terraform {
  backend "s3" {
    bucket  = "rwilliams-terraform-remote-state"
    key     = "terraform.tfstate.dev"
    region  = "us-east-1"
    profile = "default"
  }
}
