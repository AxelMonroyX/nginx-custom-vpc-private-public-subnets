## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| environment | Name of the environment | string | `"dev-nginx-elb"` | no |

## Outputs

| Name | Description |
|------|-------------|
| ami_ubuntu_18_04 | AMI used for the instances |
| dns_name | Enter to this DNS to access the webpage |
| my_ip | IP for access to SSH |