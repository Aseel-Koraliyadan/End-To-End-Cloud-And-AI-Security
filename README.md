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

### Domain 01: Identity, Access & Governance [In Progress (1/12)]
| Lab # | Lab Name | Focus Area |
| :--- | :--- | :--- |
| 02 | Conditional Access Policies | Zero Trust Enforcement |

### Roadmap: Future Domains [Planned 🚀]
| Domain | Focus Area |
| :--- | :--- |
| 03 | **Secure Compute & AI Workload Security** (AKS, Container Security, Azure OpenAI, Model Inferencing) |
| 04 | **Security Posture, Threat Protection & SecOps** (Defender CSPM, Microsoft Sentinel SIEM/SOAR) |

---

## Roadmap: Automation & Infrastructure as Code (IaC)
While the labs in this repository were initially architected via the Azure Portal for learning and validation purposes, the next phase of this project involves transforming these implementations into fully automated solutions:
- **Automation:** Transitioning manual configurations to **Azure CLI** and **PowerShell** scripts.
- **Infrastructure as Code (IaC):** Implementing **Bicep** or **Terraform** templates for repeatable, consistent deployments.
- **CI/CD Integration:** Incorporating deployment workflows into **GitHub Actions** or **Azure DevOps Pipelines** for true DevOps security engineering.

## Author Profile & Links
- **Author:** Aseel Koraliyadan
- **GitHub:** [https://github.com/Aseel-Koraliyadan](https://github.com/Aseel-Koraliyadan)
- **LinkedIn:** [https://www.linkedin.com/in/m-aseel-k/](https://www.linkedin.com/in/m-aseel-k/)
