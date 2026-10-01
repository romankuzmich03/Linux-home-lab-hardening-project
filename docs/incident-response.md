# Incident Response Basics

## Purpose

This document describes basic incident response steps for a Linux system after detecting possible security issues.

## 1. Detect the Incident

Possible indicators:

- Multiple failed SSH login attempts
- Unknown user accounts
- Suspicious running processes
- Unexpected network connections
- Unauthorized privilege escalation

## 2. Check Authentication Logs

Review SSH authentication activity:

```bash
sudo cat /var/log/auth.log

Look for:
- Failed login attempts
- Unknown users
- Suspicious IP addresses
- Unexpected successful logins

3. Review Active Sessions
Check current users:

who

Check running processes:

ps aux

Check listening ports:

ss -tulpn

4. Contain the Threat

If a suspicious account or process is found:
- Disable compromised user accounts
- Stop suspicious processes
- Block malicious IP addresses using firewall rules
- Temporarily restrict remote access if required

5. Credential Protection

If SSH keys or credentials are suspected to be compromised:
- Remove old SSH keys
- Generate new SSH keys
- Update authorized_keys
- Review sudo permissions

6. Recovery

After investigation:
- Apply security updates
- Restore secure configurations
- Verify firewall status
- Confirm SSH hardening settings

7. Lessons Learned

Document:
- What happened
- How it was detected
- Actions performed
- Improvements for future prevention
