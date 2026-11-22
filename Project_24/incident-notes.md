# Project 24 - Manual Chaos Test

## Test Objective

Validate application resiliency by simulating a service outage
and documenting recovery activities.

## Environment Details

- Region: ap-south-1
- Instance ID: i-078f69d236516a846
- Public IP: 15.207.103.10
- Service: apache2

## Start Time

Sun Nov 22 20:06:42 UTC 2026

## Expected Impact

- Service outage
- HTTP request failure
- Failed health checks
- Possible ALB unhealthy target

## Failure Scenario

The web service was intentionally stopped to simulate an outage.

## Impact Assessment

- Service unavailable
- HTTP checks failed
- Health checks were impacted

## Investigation Performed

- Reviewed service status
- Checked journalctl logs
- Verified system resources
- Validated network accessibility

## Recovery Actions

- Restarted service using systemctl
- Revalidated HTTP response
- Verified health status

## Verification Results

- Service recovered
- HTTP 200 received
- Application accessible

## Lessons Learned

- Monitoring detected outage quickly
- Recovery process was successful
- Service restoration procedure validated

## Preventive Recommendations

- CloudWatch Alarms
- Runbooks
- Scheduled Chaos Testing

