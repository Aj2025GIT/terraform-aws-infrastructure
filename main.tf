/*
Terraform Root
   │
   ├── VPC Module
   │       │
   │       ├── VPC
   │       ├── Subnet
   │       ├── Internet Gateway
   │       └── Route Table
   │
   └── EC2 Module
           │
           ├── Security Group
           └── EC2 Instance
*/

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr          = var.vpc_cidr
  subnet_cidr       = var.subnet_cidr
  avialability_zone = var.availability_zone
}


module "ec2" {
  source = "./modules/ec2"

  subnet_id     = module.vpc.subnet_id
  instance_type = var.instance_type
  ami           = var.ami

}

# ----------------------------------------------------
# Best Practice: Automatically Fetch Latest Amazon Linux AMI
# Instead of hardcoding AMI IDs, Terraform can dynamically
# retrieve the latest AMI from AWS.
# ----------------------------------------------------

# data "aws_ami" "amazon_linux" {
#   most_recent = true
#   owners      = ["amazon"]
#
#   filter {
#     name   = "name"
#     values = ["amzn2-ami-hvm-*-x86_64-gp2"]
#   }
# }

# Example usage inside EC2 module:
#
# module "ec2" {
#   source = "./modules/ec2"
#
#   subnet_id     = module.vpc.subnet_id
#   instance_type = var.instance_type
#
#   # Instead of hardcoding AMI
#   # ami = data.aws_ami.amazon_linux.id
# }
