# 🚀 Terraform Assignment 5 – EC2 with Apache Automation

## 📌 Overview

This project demonstrates how to provision an AWS EC2 instance and **automatically configure it using a startup script**.

It combines **Infrastructure as Code (Terraform)** with **configuration automation (user_data script)** to deploy a ready-to-use web server.

---

## 🏗️ Architecture

```id="c6xw1g"
                ┌───────────────────────────────┐
                │          AWS Cloud            │
                │                               │
                │   ┌───────────────────────┐   │
                │   │   EC2 Instance        │   │
                │   │   apache-server       │   │
                │   │                       │   │
                │   │  Apache Installed     │   │
                │   │  via user_data        │   │
                │   └──────────┬────────────┘   │
                │              │                │
                │      ┌───────▼────────┐       │
                │      │ Security Group │       │
                │      │ 22 (SSH)       │       │
                │      │ 80 (HTTP)      │       │
                │      └────────────────┘       │
                │                               │
                └───────────────────────────────┘

                Local Machine
                ┌───────────────────────┐
                │   Terraform Output    │
                │   → ip.txt (Public IP)│
                └───────────────────────┘
```

---

## 🛠️ Tech Stack

* Terraform
* AWS EC2
* Bash (user_data script)
* Apache Web Server
* Linux (Ubuntu 24.04)

---

## 📂 Project Structure

```bash id="0e6w2k"
assignment-5/
│── main.tf
│── install_apache.sh
│── ip.txt (generated after deployment)
│── README.md
```

---

## ⚙️ Prerequisites

* AWS account
* IAM user with access keys
* Terraform installed
* AWS CLI configured

```bash id="s0u9q9"
aws configure
```

---

## 🧱 Infrastructure Components

This project provisions:

* **EC2 Instance** → Web server
* **Security Group** → Allows:

  * SSH (22)
  * HTTP (80)
* **User Data Script** → Installs Apache automatically
* **Output File** → Saves public IP locally

---

## 🧾 Apache Installation Script

```bash id="3kx2wr"
#!/bin/bash
sudo apt update -y
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
echo "Hello from Terraform Apache Server" > /var/www/html/index.html
```

---

## 🧱 Terraform Configuration (Core)

```hcl id="8a1h5d"
resource "aws_instance" "web_server" {
  ami           = "ami-07062e2a343acc423"
  instance_type = "t2.micro"

  user_data = file("install_apache.sh")

  tags = {
    Name = "apache-server"
  }
}
```

---

## 🚀 Execution Steps

### 1. Initialize Terraform

```bash id="9z9gdl"
terraform init
```

### 2. Review Plan

```bash id="o8sk6x"
terraform plan
```

### 3. Apply Configuration

```bash id="p1mj9n"
terraform apply
```

### 4. Save Public IP to File

```bash id="y0d0kt"
terraform output -raw public_ip > ip.txt
```

### 5. Access Web Server

Open in browser:

```id="2j5lqg"
http://<your-public-ip>
```

---

## 📸 Expected Outcome

* EC2 instance created successfully
* Apache installed automatically
* Web page displays:

```id="5c0b9u"
Hello from Terraform Apache Server
```

* Public IP saved in `ip.txt`

---

## 🌍 Real-World Scenario

This setup simulates a real DevOps workflow:

* Infrastructure provisioning (Terraform)
* Automated configuration (user_data script)
* Service deployment (Apache)
* Output handling (IP saved locally)

👉 Used in:

* Web server deployments
* CI/CD pipelines
* Automated infrastructure setups

---

## 🧠 Key Learnings

* Using `user_data` for automation
* Combining infrastructure + configuration
* Security group configuration (ports 22 & 80)
* Capturing Terraform outputs
* End-to-end deployment flow

---

## ⚠️ Notes

* It may take 1–2 minutes for Apache to start after deployment
* Ensure port 80 is open to access the website
* AMI IDs may vary by region

---

## 🧹 Cleanup

```bash id="7y6l5c"
terraform destroy
```

---

## 🚀 Future Improvements

* Replace Apache with Docker container
* Deploy custom website (HTML/CSS)
* Add Load Balancer (ALB)
* Use Terraform modules
* Integrate CI/CD pipeline (Jenkins)

---

## 🙌 Author

**Badhrinarayanan J**

---

## 🏁 Badge

![Terraform](https://img.shields.io/badge/Terraform-IaC-purple?style=for-the-badge\&logo=terraform)
![AWS](https://img.shields.io/badge/AWS-Cloud-orange?style=for-the-badge\&logo=amazonaws)
![DevOps](https://img.shields.io/badge/DevOps-Automation-blue?style=for-the-badge)
