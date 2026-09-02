# End-to-End Cloud & AI Workload Security: Architecture, Defense & SC-500 Engineering Portfolio

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Microsoft Certification](https://img.shields.io/badge/Certification-SC--500-brightgreen.svg)]()
[![Zero Trust](https://img.shields.io/badge/Security-Zero%20Trust-red.svg)]()

## Mission Statement
This repository serves as an engineering portfolio and hands-on laboratory documenting the implementation of production-grade security architectures across Azure. It aligns with the **Microsoft SC-500** certification curriculum and emphasizes **Zero Trust** principles, **Defense-in-Depth** strategies, and modern cloud security governance.

### Learning Resources
These resources were reviewed and utilized as the primary guides for lab development:
- [Azure Cert Prep: SC-500 Overview](https://azurecertprep.github.io/docs/sc-500/overview)
- [Microsoft Official SC-500 Certification](https://learn.microsoft.com/en-us/credentials/certifications/cloud-and-ai-security-engineer-associate/?practice-assessment-type=certification)

---

## Security Architecture & Framework Alignment

### Zero Trust Principles
- **Verify Explicitly:** Implementing robust identity management via Microsoft Entra ID.
- **Use Least Privilege:** Enforcing granular RBAC, PIM, and access reviews.
- **Assume Breach:** Proactive threat detection using Microsoft Defender for Cloud and Sentinel.

### Compliance Frameworks
- **Microsoft Cloud Security Benchmark (MCSB v2):** Labs are aligned with MCSB controls for Identity, Networking, Data, and Posture.
- **Industry Standards:** Selected labs incorporate implementation principles derived from **NIST SP 800-53** (Security and Privacy Controls) and **PCI-DSS** (Payment Card Industry Data Security Standard) for segmentation and data protection.

---

## Tools & Services Registry
The following Azure services were utilized to architect the security controls in this project:

| Category | Services & Tools |
| :--- | :--- |
| **Identity & Access** | Microsoft Entra ID (PIM, Conditional Access, App Registrations, Managed Identities, RBAC), Azure Key Vault |
| **Network Security** | VNet, NSG, ASG, AVNM, Virtual WAN, VPN (S2S/P2S), Azure Firewall Premium, Private Link/Endpoints, Network Watcher |
| **Data & Storage** | Azure Storage Accounts, Azure SQL Database |
| **Threat Protection** | Microsoft Defender for Cloud (Storage, Databases, Key Vault), Microsoft Sentinel, Log Analytics |


## Lab Curriculum

> **Publishing in progress** - this portfolio is released incrementally, **2 labs per weekday (Mon-Fri)**. Check back daily to follow the build-out of each security domain.

### Domain 01: Identity, Access & Governance [Completed ✅]
| Lab # | Lab Name | Focus Area |
| :--- | :--- | :--- |
| 01 | Privileged Identity Management (PIM) | Just-In-Time Access |
| 02 | Conditional Access Policies | Zero Trust Enforcement |
| 03 | Auth Methods & Passwordless | Modern Authentication |
| 04 | Enterprise Applications & App Regs | OAuth/OIDC Security |
| 05 | OAuth Permissions & Consent | Supply Chain Governance |
| 06 | Managed Identities | Secretless Access |
| 07 | Key Vault Deployment & Config | Secrets Infrastructure |
| 08 | Key Vault Keys & Certificates | Cryptography Lifecycle |
| 09 | Defender for Key Vault | Secret Scanning/CSPM |
| 10 | Azure Policy for Security | Guardrails |
| 11 | RBAC & Governance | Compliance |
| 12 | Backup, Locks & IaC Security | Data Resiliency |

### Domain 02: Storage, Databases & Networking [Completed ✅]
| Lab # | Lab Name | Focus Area |
| :--- | :--- | :--- |
| 13 | Storage Account Security | Data-at-Rest Protection |
| 14 | Defender for Storage | Threat Protection |
| 15 | Azure SQL Security | TDE/CMK/Data Masking |
| 16 | Defender for Databases | Database Threat Intel |
| 17 | NSGs & ASGs | Network Segmentation |
| 18 | Azure Virtual Network Manager | Centralized Governance |
| 19 | Virtual WAN & VPN Security | Hub/Spoke/S2S/P2S |
| 20 | Entra Private Access | ZTNA/Application Proxy |
| 21 | Private Endpoints for PaaS | Network Isolation |
| 22 | Private Link Services | Service Exposure |
| 23 | Azure Firewall Premium | Traffic Inspection |
| 24 | Network Watcher Diagnostics | Observability/Forensics |

### Domain 03: Secure Compute & AI Workload Security [In Progress (1/13)]
| Lab # | Lab Name | Focus Area |
| :--- | :--- | :--- |
| 25 | Securing Microsoft 365 Copilot (Purview & DSPM) | DSPM/Purview Controls |

## Roadmap: Automation & Infrastructure as Code (IaC)
While the labs in this repository were initially architected via the Azure Portal for learning and validation purposes, the next phase of this project involves transforming these implementations into fully automated solutions:
- **Automation:** Transitioning manual configurations to **Azure CLI** and **PowerShell** scripts.
- **Infrastructure as Code (IaC):** Implementing **Bicep** or **Terraform** templates for repeatable, consistent deployments.
- **CI/CD Integration:** Incorporating deployment workflows into **GitHub Actions** or **Azure DevOps Pipelines** for true DevOps security engineering.

## Author Profile & Links
- **Author:** Aseel Koraliyadan
- **GitHub:** [https://github.com/Aseel-Koraliyadan](https://github.com/Aseel-Koraliyadan)
- **LinkedIn:** [https://www.linkedin.com/in/m-aseel-k/](https://www.linkedin.com/in/m-aseel-k/)
