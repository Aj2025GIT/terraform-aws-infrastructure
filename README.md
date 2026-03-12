# Terraform AWS Infrastructure

This project provisions AWS infrastructure using **Terraform modules**.  
It demonstrates Infrastructure as Code (IaC) practices for deploying networking and compute resources in AWS.

---

## Architecture

The Terraform configuration deploys the following infrastructure:

- VPC
- Public Subnet
- Internet Gateway
- Route Table
- Security Group
- EC2 Instance

### Infrastructure Flow

Terraform Root Module

│
├── VPC Module
│ ├── VPC
│ ├── Subnet
│ ├── Internet Gateway
│ └── Route Table
│
└── EC2 Module
├── Security Group
└── EC2 Instance

---

## Project Structure
terraform-aws-infrastructure
│
├── backend.tf
├── provider.tf
├── main.tf
├── variables.tf
├── outputs.tf
│
└── modules
├── vpc
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf
│
└── ec2
├── main.tf
├── variables.tf
└── outputs.tf


---

## Terraform Workflow

Initialize Terraform


terraform init


Review infrastructure plan


terraform plan


Apply infrastructure


terraform apply


Destroy infrastructure


terraform destroy


---

## Remote Backend

Terraform state is stored remotely using:

- **Amazon S3** for state storage
- **DynamoDB** for state locking

This ensures safe collaboration and prevents concurrent infrastructure changes.

---

## Skills Demonstrated

- Terraform Modules
- AWS VPC Networking
- Infrastructure as Code
- Remote Terraform State
- Terraform Lifecycle Management

---

## Screenshots

Deployment screenshots are included in the repository documentation.
