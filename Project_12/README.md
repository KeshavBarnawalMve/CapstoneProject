# Project 12 - Infrastructure CI Trigger (Terraform Plan)

## Objective

Implement a GitHub Actions CI pipeline that automatically validates Terraform code and generates a Terraform plan whenever changes are pushed to Project_12.

## Workflow Features

- Terraform Init
- Terraform Validate
- Terraform Plan
- Upload Terraform Plan Artifact

## Repository Structure

Project_12/
├── main.tf
├── providers.tf
└── README.md

.github/
└── workflows/
    └── project12-terraform-plan.yml

## Trigger Condition

The workflow runs only when files inside Project_12 are modified and pushed to the main branch.

```yaml
paths:
  - 'Project_12/**'
