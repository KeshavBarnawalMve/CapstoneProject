# Project 10: Internal DNS Setup

## Goal
Access a web server using its hostname instead of its IP address.

## Process
1. Verify that the DNS Server role is installed on Windows Server.
2. Open DNS Manager and navigate to Forward Lookup Zones.
3. Open the `project10.local` DNS zone.
4. Create an A record named `web` and map it to the server's IPv4 address.
5. Verify that `web.project10.local` resolves to the correct IP address using the `nslookup` command.
6. Capture screenshots of the DNS record and successful DNS resolution.

## Testing
Run the following command in Command Prompt:

`nslookup web.project10.local`

Verify that the hostname resolves to the expected server IP address.

## Deliverables
- Screenshot of successful `nslookup` output.
