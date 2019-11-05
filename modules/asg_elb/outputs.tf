output "dns_name" {
  value       = "${aws_elb.nginx_example_elb.dns_name}"
  description = "IP for access to SSH"
}

output "aws_security_group_web" {
  value = "${aws_security_group.nginx_example_allow_elb.id}"
}
