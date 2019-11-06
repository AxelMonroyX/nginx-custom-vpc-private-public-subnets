## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| private\_cidrs | CIDR for the Private Subnet | list | `<list>` | no |
| public\_cidrs | CIDR for the Public Subnet | list | `<list>` | no |
| region |  | string | `"us-east-1"` | no |
| vpc\_cidr | CIDR for the whole VPC | string | `"10.0.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| aws\_vpc\_main\_id | Returns id of the new VPN |
| private\_subnet\_cidrs | List of cidrs of private subnets |
| private\_subnets | List of ids of private subnets |
| public\_subnet\_cidrs | List of cidrs of public subnets |
| public\_subnets | List of ids of public subnets |
| vpc\_default\_cidr | Returns cidr from default vpc |