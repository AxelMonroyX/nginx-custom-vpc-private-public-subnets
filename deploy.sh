#!/bin/bash
ssh-keygen -f $PWD/key_access_asg_nginx_example
mkdir -p private/ssh ~/ssh_custom_keys
mv $PWD/key_access_asg_nginx_example.pub $PWD/private/ssh/key_access_asg_nginx_example.pub
mv $PWD/key_access_asg_nginx_example ~/ssh_custom_keys/key_access_asg_nginx_example.pem
chmod 400 ~/ssh_custom_keys/key_access_asg_nginx_example.pem
ssh-add ~/ssh_custom_keys/key_access_asg_nginx_example.pem # To allow agent forwarding

cd environments/dev_nginx_elb/
terraform init
terraform apply
