variable "aws_vpc_id" {}

variable "public_subnets" {
  type = "list"
}

variable "private_subnets" {
  type = "list"
}

variable "private_subnet_cidrs" {
  type = "list"
}

variable "vpc_cidr" {}

variable "key_name" {}

variable "ami_nat" {}

variable "region" {
  default = "us-east-1"
}

variable "nat_instance_type" {
  default = "m1.small"
}
