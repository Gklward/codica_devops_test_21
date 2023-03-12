# How to deploy codica_gklward_test 

Write a credentions to aws configure 
 
Open /codica_gklward_test/terraform s3_bucket.tf «change a source = "/home/gklward/codica_devops_test/terraform/terraform.tfstate" to your dir on pc 

Open /codica_gklward_test/main.tf  chanche "key_name  = "Gkl"" to "key_name  = "test""

Open codica_gklward_test/terraform and write  terraform init

Write terraform plan to check configurations 

After write terraform apply to build infrastructure 

Open etc/ansible/ hosts and write  ip-ec2machine and locate shh-key ec2-xx-xx-xxx-xxx.compute-1.amazonaws.com ansible_user=ubuntu ansible_ssh_private_key_file=/path/to/private/key.pem 

 Run Command ansible-playbook multios.yml 
