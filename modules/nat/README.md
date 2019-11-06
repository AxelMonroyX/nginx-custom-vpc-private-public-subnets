## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| ami\_nat | Nat instance provide by AWS depends on the region | string | n/a | yes |
| aws\_vpc\_id |  | string | n/a | yes |
| key\_name | Key to access using SSH | string | n/a | yes |
| nat\_instance\_type | Instance type for the Nat instance | string | `"m1.small"` | no |
| private\_subnet\_cidrs | List of cidrs for private subnets | list | n/a | yes |
| private\_subnets | List of private subnets | list | n/a | yes |
| public\_subnets | List of public subnets | list | n/a | yes |
| region | Region to deploy nat instance | string | `"us-east-1"` | no |
| vpc\_cidr | Cidr of the VPC | string | n/a | yes |