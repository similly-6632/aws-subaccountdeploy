terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {

  alias = "root"
  region  = "eu-west-2"
  profile = "default"

}

provider "aws" {

  region  = "eu-west-2"
  profile = "default"
  assume_role {
    role_arn = "arn:aws:iam::${local.account-id}:role/automagic"
  }
}