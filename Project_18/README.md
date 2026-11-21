# Project 18 - GitOps Infrastructure Deployment

## Objective

Automate Terraform infrastructure deployments using GitOps principles.

---

## Architecture

Developer
↓
Feature Branch
↓
Pull Request
↓
Approval
↓
Merge to Main
↓
GitHub Actions
↓
Terraform Apply
↓
Infrastructure Updated

---

## Workflow

1. Create Feature Branch
2. Modify Terraform Code
3. Push Changes
4. Create Pull Request
5. Approve PR
6. Merge PR
7. GitHub Actions Executes
8. Terraform Apply Deploys Changes

---

## Branch Protection

- Prevent direct push to main
- Require pull request
- Require approval
- Require status checks

---

## Deployment Flow

Feature Branch
→ Pull Request
→ Approval
→ Merge
→ GitHub Actions
→ Terraform Apply

---

## Verification Screenshots

### Screenshot 1

Pull Request Approval

### Screenshot 2

Pull Request Merged

### Screenshot 3

GitHub Actions Successful

### Screenshot 4

Terraform Apply Successful
