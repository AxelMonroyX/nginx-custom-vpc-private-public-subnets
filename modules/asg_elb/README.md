## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| allow\_ssh\_cidr\_block | CIDR to access through ssh, preferred your IP address/32 or use an internal CIDR for VPN | string | n/a | yes |
| ami | Provide the AMI to create autoscaling group | string | n/a | yes |
| environment | For multiple environment | string | `"dev-nginx-elb"` | no |
| instance\_type | Provide instance type for example t2.micro | string | `"t2.micro"` | no |
| key\_name | Key name to access using ssh | string | n/a | yes |
| size | Size of the autoscaling group | string | `"1"` | no |
| vpc\_elb\_subnets | A list of subnet IDs to attach to the ELB | list | n/a | yes |
| vpc\_id | The VPC ID | string | n/a | yes |
| vpc\_subnets | A list of subnet IDs to launch resources in | list | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| aws\_security\_group\_web | This will be used to give access to the NAT |
| dns\_name | DNS name for access to the webpage |