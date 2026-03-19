# IAM Lab 2 – Automated Active Directory User Provisioning

## Overview
This lab demonstrates automated user provisioning within Identity and Access Management (IAM). Instead of manually creating accounts, I automated the process using PowerShell and a CSV file. The script imports identity data, loops through each record, creates users in Active Directory, enriches their attributes, and assigns group membership. This lab reflects how real IAM teams automate onboarding at scale.

## Skills Demonstrated
- Active Directory automation
- PowerShell scripting
- CSV‑driven identity provisioning
- Identity lifecycle concepts
- Attribute enrichment
- Group management
- RBAC fundamentals
- Organizational Unit (OU) design
  
## Lab Steps
- Created a CSV file containing user identity data
- Imported the CSV into PowerShell
- Automated the creation of new Active Directory users
- Enriched user attributes (Department, Title, etc.)
- Assigned users to the appropriate security groups
- Retrieved the group and verified user membership and attributes
  
## Files Included
- automated-provisioning.ps1 – Creates users in Active Directory using CSV input
- set-attributes.ps1 – Enriches user attributes (Department, Title, etc.)
- assign-group-membership.ps1 – Adds users to the appropriate security group

## Screenshots
- Verification of automatically created users in Active Directory Users and Computers (ADUC) GUI
  
## Lessons Learned
- How CSV files drive automated provisioning workflows
- How loops and data mapping scale identity creation
- How RBAC is implemented using security groups
- How automation reduces manual effort and improves consistency
- How to validate provisioning results in ADUC
