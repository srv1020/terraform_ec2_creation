<p>steps</p>
  <br>
<p>terraform.tf</p>       : to install aws provider<br>
providers.tf       : to change / modify provider<br>
                        here we changed region.<br>
                        <br>
ec2.tf             : to create EC2 instance<br>
variable.tf        : to bind variables<br>
output.tf          : to display output after terraform plan command so we can see output displays<br>
                      like we want to see public ip to connect with ssh connection, output will show public ip ( perror we need to<br>
                      open aws gui to see public ip to connect like ssh -i abc.pem ubuntu@public ip<br>
install_ignix.sh   :  to install & start nginx<br>
<br>
<br>
_____________________________________________________________________<br>
 on ec2.tf<br>
<br>
1) create keypair for login ( to connect local machine to ec2 server)<br>
2) create VPC & Security Groups<br>
3) Create EC2 Instance<br>
