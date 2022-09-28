provider "aws" {
  region  = "ap-south-1"
}


terraform {
  backend "s3" {
    bucket = "ecsbucket001"
    key    = "state/terraform.tfstate"
    region = "ap-south-1"
  }
}
