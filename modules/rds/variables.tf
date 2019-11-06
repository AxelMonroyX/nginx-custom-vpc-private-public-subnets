variable "private_subnets" {
  type = "list"
}

variable "vpc_cidr" {
  description = "CIDR for VPC to deploy RDS"
}

variable "vpc_id" {
  description = "VPC to deploy RDS"
}

variable "aws_security_group_web" {
  description = "Security group of web instances"
}

variable "private_subnets_cidrs" {
  type        = "list"
  description = "List of cidrs for private subnets"
}
