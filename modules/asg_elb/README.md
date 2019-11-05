## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| allow_ssh_cidr_block | CIDR to access through ssh, preferred your IP address/32 or use an internal CIDR for VPN | string | n/a | yes |
| ami | Provide the AMI to create autoscaling group | string | n/a | yes |
| environment | For multiple environment | string | `"dev-nginx-elb"` | no |
| instance_type | Provide instance type for example t2.micro | string | `"t2.micro"` | no |
| key_name | Key name to access using ssh | string | n/a | yes |
| size | Size of the autoscaling group | string | `"1"` | no |
| vpc_elb_subnets | A list of subnet IDs to attach to the ELB | list | n/a | yes |
| vpc_id | The VPC ID | string | n/a | yes |
| vpc_subnets | A list of subnet IDs to launch resources in | list | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| dns_name | IP for access to SSH |