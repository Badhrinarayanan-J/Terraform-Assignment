# 🌍 Terraform AWS DevOps Portfolio

> 🚀 Building real-world cloud infrastructure using Terraform across multiple scenarios and architectures.

---

## 📌 Project Overview

This repository showcases hands-on implementation of **Infrastructure as Code (IaC)** using Terraform on AWS.

It covers a progressive journey from basic EC2 provisioning to advanced networking and automation.

---

## 🏗️ Learning Journey

```bash
Assignment-1 → EC2 (Basic)
Assignment-2 → EC2 + Elastic IP
Assignment-3 → Multi-Region Deployment
Assignment-4 → VPC + Networking
Assignment-5 → EC2 + Apache Automation
```

---

## 📂 Repository Structure

```bash
Terraform-Assignment/
│── assignment-1/
│── assignment-2/
│── assignment-3/
│── assignment-4/
│── assignment-5/
│── .gitignore
│── README.md
```

---

# ⚙️ Terraform Setup Guide

## 🔹 Install Terraform (Linux)

```bash
sudo apt update
sudo apt install -y gnupg software-properties-common

wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update
sudo apt install terraform
```

---

## 🔹 Verify Installation

```bash
terraform version
```

---

## 🔹 Install AWS CLI

```bash
sudo apt install awscli -y
aws configure
```

---

# 🚀 Terraform Workflow

```bash
terraform init     # Initialize project
terraform plan     # Preview changes
terraform apply    # Create resources
terraform destroy  # Delete resources
```

---

# 📚 Terraform Cheatsheet

## 🔹 Basic Commands

```bash
terraform init
terraform plan
terraform apply
terraform destroy
terraform validate
terraform fmt
```

---

## 🔹 State & Output

```bash
terraform show
terraform output
terraform output -raw public_ip
```

---

## 🔹 Debugging

```bash
terraform validate
terraform plan -out=tfplan
terraform apply tfplan
```

---

## 🔹 File Structure

```bash
main.tf         # Main configuration
variables.tf    # Variables
outputs.tf      # Outputs
terraform.tfstate  # State file (DO NOT DELETE)
```

---

# 🛠️ Tech Stack

* Terraform (IaC)
* AWS (EC2, VPC, Networking)
* Linux (Ubuntu)
* Bash Scripting
* Apache Web Server

---

# 🚀 Assignments Breakdown

### 🔹 Assignment 1 – EC2 Instance

* Launch EC2 instance using Terraform

---

### 🔹 Assignment 2 – Elastic IP

* Attach static public IP

---

### 🔹 Assignment 3 – Multi-Region

* Deploy EC2 in multiple regions

---

### 🔹 Assignment 4 – VPC & Networking

* Create custom VPC, subnet, IGW, route table

---

### 🔹 Assignment 5 – Apache Automation

* Install Apache using `user_data`
* Save public IP locally

---

# 🌍 Real-World Use Cases

Terraform is used for:

* Cloud infrastructure provisioning
* Multi-region deployments
* CI/CD pipeline automation
* Infrastructure version control
* Disaster recovery setups
* Scalable cloud architecture

---

# 🧠 Key Learnings

* Infrastructure as Code (IaC)
* AWS resource automation
* Multi-region architecture
* VPC networking fundamentals
* Automation using scripts
* Terraform state management

---

# ⚠️ Important Notes

* Never delete:

```bash
terraform.tfstate
```

* Always clean resources:

```bash
terraform destroy
```

* Never commit:

```bash
.terraform/
*.tfstate
```

---

# 🚀 Future Enhancements

* Docker-based deployments
* Kubernetes (EKS)
* CI/CD using Jenkins
* Remote backend (S3 + DynamoDB)
* Load Balancer (ALB)

---

# 🙌 Author

**Badhrinarayanan J**
🚀 DevOps Engineer in Progress

---

# 📊 GitHub Stats

<p align="center">
  <img src="https://github-readme-stats.vercel.app/api?username=Badhrinarayanan-J&show_icons=true&theme=tokyonight" />
</p>

---

# 🏁 Badges

![Terraform](https://img.shields.io/badge/Terraform-IaC-purple?style=for-the-badge\&logo=terraform)
![AWS](https://img.shields.io/badge/AWS-Cloud-orange?style=for-the-badge\&logo=amazonaws)
![DevOps](https://img.shields.io/badge/DevOps-Engineer-blue?style=for-the-badge)

---

⭐ If you found this project useful, give it a star!
