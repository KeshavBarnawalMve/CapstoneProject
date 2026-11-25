# Project 11: Infra Changes with Branching Policy

## Goal
Follow a structured Git branching strategy for infrastructure changes.

## Branching Strategy
- main: Contains the primary, reviewed project changes.
- feature branches: Used to develop individual changes separately.
- Pull Requests: Used to review changes before merging into main.

## Workflow
1. Create a feature branch from main.
2. Make the required project changes.
3. Stage and commit the changes.
4. Push the feature branch to GitHub.
5. Open a Pull Request targeting main.
6. Review the changes and merge the Pull Request.

## Git Commands
```bash
git switch main
git pull origin main
git switch -c feature/project-11-branching-policy
git add Project_11/README.md
git commit -m "Add Project 11 branching policy documentation"
git push -u origin feature/project-11-branching-policy
