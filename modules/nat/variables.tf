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
