# 🌐 Terraform Assignment 2 – EC2 with Elastic IP

## 📌 Overview

This project builds upon Assignment-1 by provisioning an EC2 instance and attaching a **static Elastic IP (EIP)** using Terraform.

This simulates a real-world scenario where a server requires a fixed public IP.

---

## 🏗️ Architecture

```
        ┌───────────────────────────────┐
        │          AWS Cloud            │
        │                               │
        │   ┌───────────────────────┐   │
        │   │      EC2 Instance     │   │
        │   │  (Ubuntu 24.04 LTS)   │   │
        │   └──────────┬────────────┘   │
        │              │                │
        │     ┌────────▼────────┐       │
        │     │   Elastic IP    │       │
        │     │  (Static IP)    │       │
        │     └─────────────────┘       │
        │                               │
        └───────────────────────────────┘
```

---

## 🛠️ Tech Stack

* Terraform
* AWS EC2
* AWS Elastic IP
* Ubuntu 24.04 LTS

---

## 📂 Project Structure

```bash
assignment-2/
│── main.tf
│── README.md
```

---

## ⚙️ Prerequisites

* Completion of Assignment-1
* Terraform installed
* AWS CLI configured

---

## 🧱 Terraform Configuration

```hcl
provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-07062e2a343acc423"
  instance_type = "t2.micro"

  tags = {
    Name = "EC2-With-EIP"
  }
}

resource "aws_eip" "my_eip" {
  instance = aws_instance.my_ec2.id
}
```

---

## 🚀 Execution Steps

### 1. Initialize Terraform

```bash
terraform init
```

### 2. Review Plan

```bash
terraform plan
```

### 3. Apply Configuration

```bash
terraform apply
```

### 4. Destroy Resources

```bash
terraform destroy
```

---

## 📸 Expected Outcome

* EC2 instance created
* Elastic IP allocated and attached
* Static public IP visible in AWS Console

---

## 🌍 Real-World Scenario

In production:

* Applications require a **fixed public IP**
* Elastic IP ensures stable access
* Terraform enables reproducibility and version control

---

## 🧠 Key Learnings

* Resource dependency handling
* Static IP allocation
* Multi-resource provisioning in Terraform

---

## ⚠️ Notes

* Elastic IP incurs charges when not associated
* Always destroy resources after use

---

## 🚀 Future Improvements

* Add security groups (SSH/HTTP)
* SSH into EC2 instance
* Install web server (Nginx)
* Use variables and modules

---

## 🙌 Author

<img src="https://img.shields.io/badge/DevOps-Enthusiast-blue?style=for-the-badge" />
<img src="https://img.shields.io/badge/AWS-Cloud-orange?style=for-the-badge&logo=amazonaws" />
<img src="https://img.shields.io/badge/Terraform-IaC-purple?style=for-the-badge&logo=terraform" />

**Badhrinarayanan J**  

🚀 Building real-world DevOps projects  
⚡ Focused on Cloud, Automation & Infrastructure  

🔗 GitHub: https://github.com/Badhrinarayanan-J  

---
⭐ If you found this project useful, give it a star!
