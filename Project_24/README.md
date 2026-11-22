# Project 24: Manual Chaos Test
 
## Project Overview & Goal
Validate service resilience and incident response procedures by injecting a controlled web server failure (`sudo systemctl stop nginx`), observing outage behavior (`inactive` / `HTTP 000`), executing recovery (`sudo systemctl start nginx`), and documenting the exact incident timeline in `INCIDENT_NOTES.md`.
 
## Files in This Folder
- `INCIDENT_NOTES.md` — Structured incident report capturing Baseline ($T_0$), Failure Injection ($T_1$), Recovery ($T_2$), Root Cause Analysis, and preventive actions.
 
## Commands Executed
1. `systemctl is-active nginx && curl -s -o /dev/null -w "%{http_code}\n" http://localhost`
2. `sudo systemctl stop nginx`
3. `systemctl is-active nginx && curl -s -o /dev/null -w "%{http_code}\n" http://localhost`
4. `sudo systemctl start nginx`
