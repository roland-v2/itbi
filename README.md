# itbi
Instructiuni si Tehnici de Baza in Informatica

IP Validation Script

This project provides a Bash script that validates whether a given hostname resolves to the expected IP address using a specified DNS server.

⸻

Overview

The script takes three arguments:
	1.	Hostname (e.g., example.com)
	2.	Expected IP address (e.g., 93.184.216.34)
	3.	DNS server to query (e.g., 8.8.8.8)

It performs a DNS lookup (nslookup) against the provided DNS server, extracts the resolved IP address, and compares it with the expected IP.
	•	If the IPs do not match, it prints an error message with the correct IP.
	•	If the IPs match, it prints nothing (silent success).
