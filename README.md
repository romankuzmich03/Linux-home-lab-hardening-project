Linux Home Lab Hardening Project

Cybersecurity Security Assessment Report

This report documents the security hardening process of an Ubuntu Linux virtual machine. The project
focuses on reducing attack surface, securing remote access, implementing access control, and creating basic
security monitoring automation

1. SSH Hardening

Implemented controls:
• SSH key-based authentication
• Password authentication disabled
• Direct root login disabled

Security impact:
• Reduced brute-force attack risk
• Improved remote access security
• Applied least privilege principles

2. Firewall Configuration
UFW firewall configured with default deny incoming policy.
Allowed service:
• SSH TCP port 22
Security impact:
• Only required network services are exposed
• Unnecessary incoming connections are blocked

3. Fail2ban Protection
SSH protection configured.
Configuration:
• Service: sshd
• Maximum retries: 5
• Detection window: 10 minutes
• Ban duration: 1 hour

Security impact:
• Detects repeated failed authentication attempts
• Automatically blocks suspicious activity

4. Security Monitoring
Custom scripts created:
log-check.sh
• Failed SSH login detection
• Successful authentication review
• Sudo activity monitoring
security-check.sh
• SSH status
• Firewall status
• Fail2ban status
• Network ports
• User privileges

5. Configuration Backup
backup-config.sh creates security configuration backups:
• SSH configuration
• Fail2ban configuration
• Firewall rules

6. Incident Response Basics

Recommended response steps:

1. Review authentication logs
2. Check failed login attempts
3. Review active sessions
4. Check listening ports
5. Disable suspicious accounts
6. Rotate SSH keys
7. Apply security updates

Conclusion

This Linux Home Lab demonstrates practical cybersecurity skills including SSH hardening, firewall
management, intrusion prevention, privilege management and automated security auditing.
