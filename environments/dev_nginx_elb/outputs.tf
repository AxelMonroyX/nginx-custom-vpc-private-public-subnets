# output "dns_name" {
#   value = "${module.asg_example_elb.dns_name}"
#   description = "Enter to this DNS to access the webpage"
# }

# output "my_ip" {
#   value = "${chomp(data.http.my_ip.body)}/32"
#   description = "IP for access to SSH"
# }

# output "ami_ubuntu_18_04" {
#   value       = "${module.amis.ami_ubuntu_18_04}"
#   description = "AMI used for the instances"
# }

output "aws_availability_zones" {
  value = "${data.aws_availability_zones.available.names[0]}"
}
