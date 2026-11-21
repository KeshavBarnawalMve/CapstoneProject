# Project 20 - Load Balanced Application Deployment

## Overview

Deploy two Apache web servers behind an AWS Application Load Balancer.

## Architecture

Internet
    |
    v
Application Load Balancer
    |
    +------------------+
    |                  |
    v                  v
Web Server 1      Web Server 2

## Components

- VPC
- Public Subnets
- Security Groups
- EC2 Instances
- Apache
- Application Load Balancer
- Target Group

## Implementation Steps

1. Created security groups
2. Launched EC2 instances
3. Installed Apache
4. Created Target Group
5. Created ALB
6. Registered targets
7. Verified health checks

## Health Check Configuration

Path: /
Protocol: HTTP
Interval: 30
Timeout: 5
Healthy Threshold: 2
Unhealthy Threshold: 2

## Verification Results

- Both instances running
- Both targets healthy
- ALB listener active
- Load balancing validated using curl

## Screenshots

### EC2 Instances

[Insert Screenshot]

### Target Health

[Insert Screenshot]

### ALB Configuration

[Insert Screenshot]

### Load Balanced Responses

[Insert Screenshot]

