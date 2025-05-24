
#Key pair (login)

 resource "aws_key_pair" "deployer" {
  key_name   = "terr-key"    #the file name we given while ssh-keygen
  public_key = file("terr-key.pub")   # public key 
}

#vpc and security group (to open ports and type or networking)

resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}

resource "aws_security_group" "my_security" {
  name = "security group 1"
  description = "security group basic"
  vpc_id = aws_default_vpc.default.id

  ingress {
    protocol  = "tcp"
    from_port = 22
    to_port   = 22
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "port open for ssh connection"
  }

  ingress {
    protocol  = "tcp"
    from_port = 80
    to_port   = 80
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "port open for HTTP connection"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "all traffic allowed"
  }
}


#ec2 instance

resource "aws_instance" "my_instance" {
    key_name = aws_key_pair.deployer.key_name
    security_groups = [aws_security_group.my_security.name]
    ami = var.ec2_ami_id #ubuntu type and on same region
    instance_type = var.aws_instance_type
    user_data = file("install_nginx.sh")

    root_block_device{
        volume_size = var.root_storage_size
        volume_type = "gp3"
        
     }
    tags = {
    Name = var.ec2_tag_name
  }
}
