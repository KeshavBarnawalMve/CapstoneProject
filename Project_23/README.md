# Project 23: IAM Role Based Access
 
## Project Overview & Goal
Eliminate hardcoded AWS Access Keys and Secret Keys on EC2 instances by configuring an **IAM Role** (`p23-ec2-s3-readonly-role` with `AmazonS3ReadOnlyAccess` and `ec2-trust-policy.json`) and associating it via an **IAM Instance Profile** (`p23-ec2-s3-readonly-profile`) for secure, credential-free Amazon S3 access.
 
## Files in This Folder
- `ec2-trust-policy.json` — IAM trust policy allowing `ec2.amazonaws.com` to assume the role via STS.
- `cli-test-output.txt` — Recorded verification output showing attached policy, active EC2 Instance Profile association, and S3 bucket access.
 
## Commands Executed
1. `aws iam create-role --role-name p23-ec2-s3-readonly-role --assume-role-policy-document file://ec2-trust-policy.json`
2. `aws iam attach-role-policy --role-name p23-ec2-s3-readonly-role --policy-arn arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess`
3. `aws iam create-instance-profile --instance-profile-name p23-ec2-s3-readonly-profile && aws iam add-role-to-instance-profile --instance-profile-name p23-ec2-s3-readonly-profile --role-name p23-ec2-s3-readonly-role`
4. `aws ec2 associate-iam-instance-profile --instance-id $EC2_ID --iam-instance-profile Name=p23-ec2-s3-readonly-profile --region ap-south-1`
5. `aws ec2 describe-iam-instance-profile-associations --filters "Name=instance-id,Values=$EC2_ID" --region ap-south-1 --output table`
