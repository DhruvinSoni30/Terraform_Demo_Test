provider "aws" {
  region  = var.region
  profile = "profile"
}

# configure backend
terraform {
  backend "s3" {
    bucket         = "bucket-name"
    key            = "terraform.tfstate"
    region         = "us-east-2"
    profile        = "profile"
  }
}
