provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "${pathexpand("~/.aws/credentials")}"
  profile                 = "terraform_user_profile"
}
