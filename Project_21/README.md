# Project 21: Centralized AWS CloudWatch Monitoring Dashboard



## Project Overview & Goal
Consolidate infrastructure and application telemetry into a single observability screen by deploying a custom **Amazon CloudWatch Dashboard** (`p21-capstone-performance-dashboard`) via JSON widget definitions (`dashboard-body.json`) in `ap-south-1`.



## Files in This Folder
- `dashboard-body.json` — 4-widget JSON layout tracking EC2 (`CPUUtilization`, `NetworkIn`, `NetworkOut`), ALB (`RequestCount`, `TargetResponseTime`), CloudWatch Logs (`IncomingBytes`, `IncomingLogEvents`), and a Markdown summary card.



## Commands Executed
1. `aws cloudwatch put-dashboard --dashboard-name p21-capstone-performance-dashboard --dashboard-body file://capstone/project21-cloudwatch-monitoring-dashboard/dashboard-body.json --region ap-south-1`
2. `aws cloudwatch list-dashboards --region ap-south-1 --output table`
3. `aws cloudwatch get-dashboard --dashboard-name p21-capstone-performance-dashboard --region ap-south-1`
