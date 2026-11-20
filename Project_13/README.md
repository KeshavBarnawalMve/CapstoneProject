cat > README.md <<'EOF'
# Project 13: Build Docker Image and Push to Amazon ECR

## Overview

This project demonstrates how to containerize a web application using Docker and publish the Docker image to Amazon Elastic Container Registry (ECR).

A simple static website was created using HTML and CSS. The website was packaged into a Docker image using Nginx as the web server. The Docker image was then pushed to an Amazon ECR repository for storage and future deployment.

---

## Project Objectives

- Create a simple web application.
- Build a Docker image for the application.
- Test the application inside a Docker container.
- Create an Amazon ECR repository.
- Push the Docker image to Amazon ECR.
- Verify the image upload in ECR.

---

## Technologies Used

| Technology | Purpose |
|------------|----------|
| HTML | Web Page Structure |
| CSS | Web Page Styling |
| Docker | Containerization |
| Nginx | Web Server |
| AWS CLI | AWS Management |
| Amazon ECR | Container Image Registry |

---

## Project Architecture

Application Files
(index.html + styles.css)

        │

        ▼

Docker Image Build

        │

        ▼

Docker Container

        │

        ▼

Amazon ECR Repository

        │

        ▼

Stored Container Image

---

## Project Structure

```text
Project_13/
│
├── Dockerfile
├── index.html
├── styles.css
└── README.md
