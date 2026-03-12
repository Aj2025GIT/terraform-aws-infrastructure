/*
EC2 Module
   │
   ├── Security Group
   └── EC2 Instance
*/

data "aws_subnet" "selected" {
  id = var.subnet_id
}

resource "aws_security_group" "ec2_sg" {
  
  name = "ec2-security-group"
  description = "Allow SST and HTTP"
  vpc_id = data.aws_subnet.selected.vpc_id

ingress {
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  }

ingress {
  from_port = 80
  to_port = 80
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
    }

egress {
  from_port = 0
  to_port = 0
  protocol = "-1"
  cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "web_server" {

  ami           = var.ami
  instance_type = var.instance_type

  subnet_id = var.subnet_id

  vpc_security_group_ids = [
    aws_security_group.ec2_sg.id
  ]

  tags = {
    Name = "terraform-ec2"
  }

}