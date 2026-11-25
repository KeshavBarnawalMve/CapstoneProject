# Project 18 — GitOps Infrastructure Deployment

## Objective
Deploy infrastructure changes automatically through a GitHub Actions workflow after a pull request is merged into the main branch.

## Tools
- Git and GitHub
- GitHub Actions
- Terraform
- AWS S3
- AWS IAM with OpenID Connect (OIDC)

## Workflow
1. Create a feature branch.
2. Update Terraform configuration.
3. Open a pull request to main.
4. Review and merge the pull request.
5. GitHub Actions initializes and validates Terraform.
6. Terraform creates or updates the infrastructure after production environment approval.

## Security
- AWS credentials should be provided through GitHub OIDC.
- Do not commit AWS access keys, secret keys, or Terraform state files.
- Configure GitHub environment protection before enabling automatic apply.
