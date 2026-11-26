# Project 1: Deploy a Linux EC2 Web Server Using Terraform

## Goal
Deploy a Linux web server on AWS using Terraform (Infrastructure as Code) and host a webpage using Apache.

## Process
1. Configure AWS credentials using `aws configure`.
2. Write Terraform code to create a VPC, subnet, security group, and EC2 instance.
3. Use a Bash user-data script to install and start Apache.
4. Run Terraform commands to create the infrastructure.
5. Access the webpage using the EC2 public IP.
6. Push the Terraform code to GitHub.

## Important Commands

- `terraform init` – Initialize Terraform.
- `terraform fmt` – Format Terraform files.
- `terraform validate` – Validate the configuration.
- `terraform plan` – Preview infrastructure changes.
- `terraform apply` – Create AWS resources.
- `terraform output` – Display configured outputs.
- `terraform state list` – List managed resources.
- `terraform destroy` – Delete created infrastructure.
- `git add .` – Stage changes.
- `git commit -m "message"` – Save changes locally.
- `git push origin main` – Push code to GitHub.

## Testing
Open `http://<EC2-PUBLIC-IP>` in a browser to verify that the Apache webpage is accessible.

## Deliverables
- GitHub repository containing Terraform code.
- Screenshot of the working webpage.
