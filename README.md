☁️ Terraform AWS Infrastructure Automation

## 🧩 Project Overview
This project demonstrates Infrastructure as Code (IaC) using Terraform to provision AWS resources in a scalable and automated way.

---

## 🏗️ Architecture
The infrastructure includes:

- VPC with subnets  
- EC2 instances for compute  
- Security groups for controlled access  
- Remote state stored in S3 with DynamoDB locking  

---

## ⚙️ Tech Stack
- **Terraform** → Infrastructure provisioning  
- **AWS** → Cloud platform (EC2, VPC, IAM, S3, DynamoDB)  

---

## 🚀 Key Features
- Automated provisioning of AWS infrastructure  
- Modular Terraform configuration for reusability  
- Remote state management using **S3 and DynamoDB**  
- Secure infrastructure using security groups  

---

## 🌐 Networking Design
- Configured VPC with subnets  
- Defined routing and access control  
- Enabled secure communication between components  

---

## 🔄 Workflow
1. Write Terraform configuration files  
2. Initialize Terraform  
   ```bash
   terraform init
