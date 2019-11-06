## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws\_security\_group\_web | Security group of web instances | string | n/a | yes |
| private\_subnets |  | list | n/a | yes |
| private\_subnets\_cidrs | List of cidrs for private subnets | list | n/a | yes |
| vpc\_cidr | CIDR for VPC to deploy RDS | string | n/a | yes |
| vpc\_id | VPC to deploy RDS | string | n/a | yes |