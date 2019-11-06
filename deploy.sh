#!/bin/bash
mkdir -p private/ssh ~/ssh_custom_keys
ssh-keygen -f $PWD/private/ssh/key_access_asg_nginx_example -N ""

mv $PWD/private/ssh/key_access_asg_nginx_example $PWD/private/ssh/key_access_asg_nginx_example.pem
chmod 400 $PWD/private/ssh/key_access_asg_nginx_example.pem
ssh-add $PWD/private/ssh/key_access_asg_nginx_example.pem # To allow agent forwarding

cd environments/dev_nginx_elb/
terraform init
terraform apply


# TODO: Replace with docker to install terraform to not have to use local terraform