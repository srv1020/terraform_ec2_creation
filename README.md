steps
terraform.tf       : to install aws provider
providers.tf       : to change / modify provider
                        here we changed region.
                        
ec2.tf             : to create EC2 instance
variable.tf        : to bind variables
install_ignix.sh   :  to install & start nginx

_____________________________________________________________________
 on ec2.tf

1) create keypair for login ( to connect local machine to ec2 server)
2) create VPC & Security Groups
3) Create EC2 Instance
