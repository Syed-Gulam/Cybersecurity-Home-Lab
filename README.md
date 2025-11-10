# Cybersecurity-Home-Lab
Tools: VirtualBox, Active Directory, Snort, pfSense, Wireshark, Splunk, Metasploit, Nmap, Atomic Red Team

## Overview
This home lab simulates an enterprise AD environment with ~10 VMs (Domain Controller, workstation images, Linux servers, IDS, firewall) for red-team/blue-team exercises and forensic practice.

## Goals
- Build AD domain controller and join Windows clients.
- Generate telemetry (Windows logs, Netflow, firewall logs) and ingest into Splunk/OpenSearch.
- Run Atomic Red Team tests and map detections to MITRE ATT&CK.
- Perform network capture analysis with Wireshark and intrusion detection with Snort.
- Practice exploitation with Nmap/Metasploit against isolated vulnerable VMs.

## Quick start
1. Install VirtualBox and Extension Pack.
2. Create VMs:
   - `DC` (Windows Server) — enable AD DS.
   - `Kali` — attacker machine.
   - `Win10-Client` x3 — joined to domain.
   - `Vulnerable-VMs` (Metasploitable/OWASP VM).
   - `Splunk` or `ELK` VM for logs.
   - `pfSense` VM as gateway.
   - `Snort` sensor (can run on pfSense).
3. Use `scripts/setup-dc.ps1` on the DC to install AD (see script).
4. Run `scripts/deploy_atomic.sh` from Kali to execute selected Atomic Red Team tests (follow Atomic docs).
5. Run `nmap` and `metasploit` against vulnerable VMs and capture traffic.

## Useful commands
- Nmap: `nmap -sC -sV -oA scans/target1 10.0.2.15`
- Metasploit: `msfconsole -q` → `use exploit/windows/smb/ms17_010_eternalblue`
- Wireshark filter: `tcp.port==445 || smb || http`
- Splunk sample search: `index=wineventlog EventCode=4624 | stats count by Account_Name`

## References
- Atomic Red Team: https://github.com/redcanaryco/atomic-red-team
