# 🚀 Terraform Assignment 1 – AWS EC2 Provisioning

## 📌 Overview

This project demonstrates how to provision a basic AWS EC2 instance using Terraform in the **Ohio (us-east-2)** region.

It introduces Infrastructure as Code (IaC) concepts and the Terraform workflow for managing cloud resources.

---

## 🏗️ Architecture

```
        ┌───────────────────────────────┐
        │          AWS Cloud            │
        │                               │
        │   ┌───────────────────────┐   │
        │   │      EC2 Instance     │   │
        │   │  (Ubuntu 24.04 LTS)   │   │
        │   └───────────────────────┘   │
        │                               │
        └───────────────────────────────┘
```

---

## 🛠️ Tech Stack

* Terraform
* AWS EC2
* Ubuntu 24.04 LTS
* AWS CLI

---

## 📂 Project Structure

```bash
assignment-1/
│── main.tf
│── README.md
```

---

## ⚙️ Prerequisites

* AWS account
* IAM user with Access Key & Secret Key
* Terraform installed
* AWS CLI configured

```bash
aws configure
```

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
    Name = "Ubuntu-EC2"
  }
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

* EC2 instance created successfully
* Instance visible in AWS Console
* Tagged as **Ubuntu-EC2**

---

## 🧠 Key Learnings

* Terraform lifecycle: init → plan → apply → destroy
* AWS provider configuration
* Basic EC2 provisioning

---

## ⚠️ Notes

* AMI IDs are region-specific and may change
* Always destroy resources to avoid unnecessary charges

---

## 🚀 Future Improvements

* Add SSH key pair
* Configure security group
* Use variables instead of hardcoding values

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
