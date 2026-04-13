# 🌐 Terraform Assignment 4 – AWS VPC & EC2 Deployment

## 📌 Overview

This project demonstrates how to build a **custom AWS Virtual Private Cloud (VPC)** and deploy an EC2 instance inside it using Terraform.

It covers core networking components required in real-world cloud environments.

---

## 🏗️ Architecture Diagram

```id="9n0k6c"
                    ┌───────────────────────────────┐
                    │          AWS Cloud            │
                    │                               │
                    │        VPC (10.0.0.0/16)      │
                    │   ┌───────────────────────┐   │
                    │   │   Public Subnet       │   │
                    │   │   (10.0.1.0/24)       │   │
                    │   │                       │   │
                    │   │   ┌───────────────┐   │   │
                    │   │   │  EC2 Instance │   │   │
                    │   │   │   vpc-ec2     │   │   │
                    │   │   └───────────────┘   │   │
                    │   └──────────┬────────────┘   │
                    │              │                │
                    │     ┌────────▼────────┐       │
                    │     │ Route Table     │       │
                    │     │ 0.0.0.0/0 → IGW │       │
                    │     └────────┬────────┘       │
                    │              │                │
                    │     ┌────────▼────────┐       │
                    │     │ Internet Gateway│       │
                    │     └─────────────────┘       │
                    │                               │
                    └───────────────────────────────┘
```

---

## 🛠️ Tech Stack

* Terraform
* AWS VPC
* AWS EC2
* Networking (Subnet, Route Table, IGW)
* Ubuntu 24.04 LTS

---

## 📂 Project Structure

```bash id="sk9z3w"
assignment-4/
│── main.tf
│── README.md
```

---

## ⚙️ Prerequisites

* AWS account
* IAM user with access keys
* Terraform installed
* AWS CLI configured

```bash id="x9x5gq"
aws configure
```

---

## 🧱 Infrastructure Components

This project provisions:

* **VPC** → Custom network (`10.0.0.0/16`)
* **Subnet** → Public subnet (`10.0.1.0/24`)
* **Internet Gateway** → Enables internet access
* **Route Table** → Routes traffic to internet
* **Security Group** → Allows SSH access (port 22)
* **EC2 Instance** → Deployed inside subnet

---

## 🧱 Terraform Configuration (Core Snippet)

```hcl id="9m5c6r"
provider "aws" {
  region = "us-east-2"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-07062e2a343acc423"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.my_subnet.id
}
```

---

## 🚀 Execution Steps

### 1. Initialize Terraform

```bash id="5rjrxp"
terraform init
```

### 2. Review Plan

```bash id="33u4mc"
terraform plan
```

### 3. Apply Configuration

```bash id="s93f7j"
terraform apply
```

### 4. Destroy Resources

```bash id="h2p7xz"
terraform destroy
```

---

## 📸 Expected Outcome

* VPC created with CIDR `10.0.0.0/16`
* Public subnet created
* Internet Gateway attached
* Route table configured for internet access
* EC2 instance launched inside VPC

---

## 🌍 Real-World Scenario

This setup mimics a **basic production-ready network**:

* Applications run inside a VPC
* Subnets control access and isolation
* Route tables define traffic flow
* Internet Gateway provides external connectivity

👉 Used in:

* Web application hosting
* Backend services
* Cloud-native deployments

---

## 🧠 Key Learnings

* VPC fundamentals and CIDR blocks
* Public subnet creation
* Internet Gateway usage
* Route table configuration
* Deploying EC2 inside custom network

---

## ⚠️ Notes

* Ensure correct region while verifying resources
* EC2 must have public IP for internet access
* Always destroy resources after use to avoid charges

---

## 🚀 Future Improvements

* Add private subnet + NAT Gateway
* Configure Load Balancer (ALB)
* Deploy web server (Nginx)
* Use Terraform modules
* Implement remote backend (S3 + DynamoDB)

---

## 🙌 Author

**Badhrinarayanan J**

---

## 🏁 Badge

![Terraform](https://img.shields.io/badge/Terraform-IaC-purple?style=for-the-badge\&logo=terraform)
![AWS](https://img.shields.io/badge/AWS-Networking-orange?style=for-the-badge\&logo=amazonaws)
![DevOps](https://img.shields.io/badge/DevOps-Engineer-blue?style=for-the-badge)
