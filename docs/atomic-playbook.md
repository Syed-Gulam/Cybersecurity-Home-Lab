# Atomic Red Team Playbook (short)
- Clone the atomic-red-team repo on a management or attacker host.
- Identify the technique you want to test (e.g., T1003 credential dumping).
- If the technique targets Windows, run the provided PowerShell or command on the target VM while capturing telemetry in Splunk.
- Map observed logs to ATT&CK IDs and update detection-rules.md with search queries.
