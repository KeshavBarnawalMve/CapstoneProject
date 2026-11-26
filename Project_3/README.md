# Project 3: EC2 State Monitoring with CloudWatch Alarm

## Goal
Monitor EC2 CPU utilization using Amazon CloudWatch and generate an alarm when CPU usage exceeds a defined threshold.

## Process
1. Write Terraform code to create an EC2 instance on AWS.
2. Configure an Amazon CloudWatch alarm to monitor the EC2 CPU utilization metric.
3. Set a CPU utilization threshold and define the alarm condition.
4. Generate CPU load on the EC2 instance to simulate high resource usage.
5. Monitor CPU metrics and verify that the alarm changes state when the threshold is exceeded.
6. Capture a screenshot of the CloudWatch alarm and push the Terraform code to GitHub.

## Testing
Generate CPU load and check the CloudWatch console to verify that the alarm triggers when CPU utilization exceeds the configured threshold.

## Deliverables
- CloudWatch alarm screenshot.
- GitHub repository link.
