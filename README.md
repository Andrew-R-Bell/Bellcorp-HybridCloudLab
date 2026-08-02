# Bellcorp Hybrid Cloud Lab

## Overview

Bellcorp Hybrid Cloud Lab is a hands-on infrastructure engineering project that demonstrates the design, implementation, automation, and management of a modern hybrid Microsoft environment.

The project combines on-premises Windows Server infrastructure with Microsoft Azure services using Infrastructure as Code (IaC), PowerShell automation, and industry best practices.

This repository is being developed as a practical portfolio to demonstrate skills in:

- Windows Server Administration
- Active Directory Domain Services
- DNS and DHCP
- Group Policy
- Microsoft Entra ID (Azure AD)
- Azure Administration (AZ-104)
- PowerShell Automation
- Azure CLI
- Bicep
- Terraform
- Git and GitHub
- Infrastructure as Code
- Hybrid Identity
- Enterprise Documentation

---

# Project Goals

The objectives of this project are to:

- Build a realistic enterprise Active Directory environment.
- Extend the environment into Microsoft Azure.
- Automate infrastructure deployment with PowerShell.
- Deploy Azure resources using Bicep and Terraform.
- Document every stage of the implementation.
- Produce a professional engineering portfolio.

---

# Current Architecture

```
                Microsoft Azure
                       │
          (Future Hybrid Connection)
                       │
────────────────────────────────────────
                       │
                 VMware Workstation
                       │
                 SRV-DC01
          Windows Server 2025
          Active Directory
                 DNS Server
                       │
                bellcorp.local
```

---

# Repository Structure

```
Bellcorp-HybridCloudLab

docs/
images/
lab-files/

scripts/
    ActiveDirectory/
    Azure/
    Common/
    Tests/

README.md
ROADMAP.md
CHANGELOG.md
```

---

# Current Progress

## Completed

- GitHub Repository
- VMware Workstation Lab
- Windows Server 2025
- Active Directory Forest
- DNS Server
- Organisational Units
- Security Groups
- Initial Users
- Static IP Configuration

## In Progress

- PowerShell Automation Framework
- Health Check Scripts

## Planned

- Windows 11 Client
- Group Policy
- File Server
- Azure Resource Groups
- Azure Networking
- Azure Virtual Machines
- Azure Storage
- Azure Key Vault
- Azure Monitor
- Microsoft Entra ID
- Azure Site-to-Site Connectivity
- Bicep
- Terraform
- GitHub Actions
- CI/CD

---

# Learning Objectives

This repository focuses on practical implementation rather than theoretical exercises.

Every component is:

- Designed
- Built
- Documented
- Automated
- Tested

---

# Technologies

- Windows Server 2025
- Active Directory
- DNS
- VMware Workstation
- Microsoft Azure
- PowerShell 7
- Git
- GitHub
- Visual Studio Code
- Azure CLI
- Bicep
- Terraform

---

# Author

Andrew Bell

This repository is maintained as a personal learning and professional portfolio project while developing enterprise infrastructure and cloud engineering skills.