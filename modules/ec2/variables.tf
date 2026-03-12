variable "subnet_id" {
  description = "subnet where EC2 will be deployed"
}

variable "instance_type" {
  description = "EC2 instance type"
}

variable "ami" {
  description = "AMI ID for EC2 instance"
  type        = string
}