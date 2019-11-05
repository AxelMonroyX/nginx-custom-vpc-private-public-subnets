# output "vpc_default_id" {
#   value       = "${data.aws_vpc.default.id}"
#   description = "Return the default vpc id"
# }

# output "vpc_default_subnets" {
#   value       = "${data.aws_subnet_ids.all.ids}"
#   description = "Returns subnets from default vpc"
# }


output "vpc_default_cidr" {
  value       = "${var.vpc_cidr}"
  description = "Returns cidr from default vpc"
}

output "aws_vpc_main_id" {
  value = "${aws_vpc.main.id}"
}

output "public_subnets" {
 value = "${aws_subnet.public_subnets.*.id}"
}

output "public_subnet_cidrs" {
 value = "${var.public_cidrs}"
}
output "private_subnets" {
 value = "${aws_subnet.private_subnets.*.id}" # REPLACE
}
output "private_subnet_cidrs" {
 value = "${var.private_cidrs}"
}
