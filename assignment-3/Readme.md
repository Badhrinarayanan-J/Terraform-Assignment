# 🌍 Terraform Assignment 3 – Multi-Region EC2 Deployment

## 📌 Overview

This project demonstrates provisioning **EC2 instances across multiple AWS regions** using Terraform.

It introduces **multi-region infrastructure deployment** by creating instances in:

* Ohio (`us-east-2`)
* N. Virginia (`us-east-1`)

---

## 🏗️ Architecture

```id="o6q2rf"
                ┌───────────────────────────────┐
                │          AWS Cloud            │
                │                               │
                │   Ohio (us-east-2)            │
                │   ┌───────────────────────┐   │
                │   │   EC2 Instance        │   │
                │   │   hello-ohio          │   │
                │   └───────────────────────┘   │
                │                               │
                │   N. Virginia (us-east-1)     │
                │   ┌───────────────────────┐   │
                │   │   EC2 Instance        │   │
                │   │   hello-virginia      │   │
                │   └───────────────────────┘   │
                │                               │
                └───────────────────────────────┘
```

---

## 🛠️ Tech Stack

* Terraform
* AWS EC2
* Multi-region deployment
* Ubuntu 24.04 LTS

---

## 📂 Project Structure

```bash id="6tivbd"
assignment-3/
│── main.tf
│── README.md
```

---

## ⚙️ Prerequisites

* AWS account
* IAM user with access keys
* Terraform installed
* AWS CLI configured

```bash id="z61y4k"
aws configure
```

---

## 🧱 Terraform Configuration

```hcl id="zb83z6"
# Default provider (Ohio)
provider "aws" {
  region = "us-east-2"
}

# Secondary provider (Virginia)
provider "aws" {
  alias  = "virginia"
  region = "us-east-1"
}

# EC2 - Ohio
resource "aws_instance" "ohio_instance" {
  ami           = "ami-07062e2a343acc423"
  instance_type = "t2.micro"

  tags = {
    Name = "hello-ohio"
  }
}

# EC2 - Virginia
resource "aws_instance" "virginia_instance" {
  provider      = aws.virginia
  ami           = "ami-0ec10929233384c7f"
  instance_type = "t2.micro"

  tags = {
    Name = "hello-virginia"
  }
}
```

---

## 🚀 Execution Steps

### 1. Initialize Terraform

```bash id="1hvqn2"
terraform init
```

### 2. Review Plan

```bash id="r7q8fn"
terraform plan
```

### 3. Apply Configuration

```bash id="k7gtd8"
terraform apply
```

### 4. Destroy Resources

```bash id="gq9v4o"
terraform destroy
```

---

## 📸 Expected Outcome

* EC2 instance created in **Ohio**

  * Name: `hello-ohio`

* EC2 instance created in **N. Virginia**

  * Name: `hello-virginia`

---

## 🌍 Real-World Scenario

Multi-region deployments are used in:

* High availability systems
* Disaster recovery setups
* Global applications with low latency

This setup simulates distributing infrastructure across regions.

---

## 🧠 Key Learnings

* Multi-region infrastructure deployment
* Terraform provider aliasing
* Region-specific AMI handling
* Managing multiple resources efficiently

---

## ⚠️ Notes

* AMI IDs are region-specific and must be updated accordingly
* Ensure correct region selection in AWS Console while verifying
* Destroy resources after use to avoid charges

---

## 🚀 Future Improvements

* Add Elastic IP for static access
* Configure security groups
* Enable SSH access
* Deploy applications (Nginx/Apache)
* Convert into reusable Terraform modules

---

## 🙌 Author

**Badhrinarayanan J**

---

## 🏁 Badge

![Terraform](https://img.shields.io/badge/Terraform-IaC-purple?style=for-the-badge\&logo=terraform)
![AWS](https://img.shields.io/badge/AWS-Cloud-orange?style=for-the-badge\&logo=amazonaws)
![DevOps](https://img.shields.io/badge/DevOps-Engineer-blue?style=for-the-badge)
