<h5>steps<h5>
  
terraform.tf       : to install aws provider
providers.tf       : to change / modify provider
                        here we changed region.
                        
ec2.tf             : to create EC2 instance
variable.tf        : to bind variables
output.tf          : to display output after terraform plan command so we can see output displays
                      like we want to see public ip to connect with ssh connection, output will show public ip ( perror we need to
                      open aws gui to see public ip to connect like ssh -i abc.pem ubuntu@public ip
install_ignix.sh   :  to install & start nginx


_____________________________________________________________________
 on ec2.tf

1) create keypair for login ( to connect local machine to ec2 server)
2) create VPC & Security Groups
3) Create EC2 Instance
