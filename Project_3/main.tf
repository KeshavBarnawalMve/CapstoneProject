
resource "aws_instance" "monitor_server" {

  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  associate_public_ip_address = true

  user_data = <<-SCRIPT
#!/bin/bash

apt update -y
apt install -y stress-ng

stress-ng --cpu 2 --timeout 600s &
SCRIPT

  tags = {
    Name = "Keshav-Monitoring-Server"
  }
}

resource "aws_sns_topic" "cpu_notification" {
  name = "keshav-cpu-alert-topic"
}

resource "aws_sns_topic_subscription" "email_subscription" {

  topic_arn = aws_sns_topic.cpu_notification.arn
  protocol  = "email"
  endpoint  = var.email_address
}

resource "aws_cloudwatch_metric_alarm" "cpu_alarm" {

  alarm_name = "Keshav-HighCPU-Alarm"

  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2

  metric_name = "CPUUtilization"
  namespace   = "AWS/EC2"

  period    = 120
  statistic = "Average"

  threshold = 70

  alarm_description  = "Alarm when CPU exceeds 70%"
  treat_missing_data = "missing"

  dimensions = {
    InstanceId = aws_instance.monitor_server.id
  }

  alarm_actions = [
    aws_sns_topic.cpu_notification.arn
  ]
}
