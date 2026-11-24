# Project 6: Version Control Infrastructure

## Goal
Track Terraform infrastructure changes cleanly using Git branches, commits, and Pull Requests on GitHub.

## Project Overview
Infrastructure as Code (IaC) configurations should be version controlled just like application code. This project demonstrates how Terraform configurations can be managed through Git and GitHub using feature branches, commits, and Pull Requests.

The project creates a simple Terraform-managed resource and tracks infrastructure changes through a Git workflow.

## Project Structure
```text
Project_6_new/
├── main.tf
├── infrastructure.txt
└── README.md
```

## Technologies Used
- Terraform – Infrastructure as Code (IaC).
- Git – Version control and branch management.
- GitHub – Repository hosting and Pull Request management.

## Steps Performed

1. **Created a Feature Branch:** Created a dedicated feature branch from `main` for infrastructure updates.

2. **Created and Validated Terraform Configuration:** Created the Terraform configuration in `main.tf` and validated it to check for configuration errors.

3. **Initialized and Deployed Infrastructure:** Initialized Terraform and deployed the infrastructure using Terraform commands.

4. **Verified the Generated Resource:** Checked the deployed resource to confirm that the infrastructure was created successfully.

5. **Staged Terraform Files Using Git:** Added the Terraform configuration and related project files to the Git staging area.

6. **Committed Infrastructure Changes:** Created commits with meaningful commit messages to maintain a clear history of infrastructure changes.

7. **Pushed the Feature Branch to GitHub:** Uploaded the feature branch and its commits to the remote GitHub repository.

8. **Raised a Pull Request:** Created a Pull Request on GitHub to review the infrastructure changes and merge the feature branch into `main`.

## Key Git Commands
```bash
# Create and switch to a feature branch
git checkout -b feature/infrastructure-update

# Check the current branch and working tree
git branch
git status

# Stage the project files
git add main.tf infrastructure.txt README.md

# Commit the changes
git commit -m "Add Terraform infrastructure configuration"

# Push the feature branch to GitHub
git push -u origin feature/infrastructure-update
```

After pushing the branch, create a Pull Request on GitHub and merge it into `main` after review and approval.

## Learning Outcomes
- Understanding Infrastructure as Code (IaC) version control.
- Creating and managing feature branches.
- Validating and deploying Terraform configurations.
- Tracking infrastructure changes through Git commits.
- Pushing branches to GitHub.
- Using Pull Requests for code review and controlled merging.

## Conclusion
This project demonstrates how Git and GitHub can be used to manage Terraform infrastructure changes in a structured and traceable way. Feature branches, meaningful commits, and Pull Requests help maintain a clean history and support collaborative infrastructure management.
