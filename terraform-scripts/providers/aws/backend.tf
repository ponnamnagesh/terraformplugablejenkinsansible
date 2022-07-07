terraform {

  backend "s3" {
    profile = "poc"
    region  = "us-east-2"
    bucket          = "containers-terraform-state-storage"
    dynamodb_table  = "terraform-state-lock"
    key     = "service/ansible/terraform.tfstate"
    encrypt = true
  }
}

provider "aws" {
  profile = "poc"
  //region  = "us-east-2"
  region  = "${var.aws_region}"
}
