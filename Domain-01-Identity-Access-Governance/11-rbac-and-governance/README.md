# Lab 11: Azure RBAC and Identity Governance

## Objective
Design and implement a comprehensive least-privilege access model using custom RBAC roles, security groups, Attribute-Based Access Control (ABAC), and automated Identity Governance access reviews.

## Security Architecture Concepts
- Least Privilege RBAC: Replacing broad administrative access with targeted, custom-defined roles.
- ABAC (Attribute-Based Access Control): Access control based on resource tags rather than hardcoded assignments.
- Identity Governance: Establishing automated lifecycle reviews to prevent access creep.

**Tools/Services Used:** Microsoft Entra ID, Azure RBAC, PIM Access Reviews.

## Prerequisites
- Azure Subscription with Owner or User Access Administrator rights.
- Microsoft Entra ID P2 License.

## Implementation Guide
### Task 1: Privilege Assignment Audit
1. In the Azure Portal, search for **Subscriptions** and click on your subscription.
2. On the left menu, click **Access control (IAM)**.
3. Click the **Role assignments** tab.
4. Filter for `Owner` or `Contributor` roles.
5. Take a screenshot: `challenge11-initial-rbac-audit.png`.

### Task 2: Custom RBAC Role Engineering
1. In **Access control (IAM)**, click the **Roles** tab.
2. Click **+ Add** > **Add custom role**.
3. **Basics:** Name `Contoso Network Viewer`, Description: `Can view network settings but cannot change them`. Click **Next**.
4. **JSON tab:** Click **Edit**, delete existing actions, and paste:
```json
"actions": [
    "Microsoft.Network/virtualNetworks/read",
    "Microsoft.Network/networkSecurityGroups/read",
    "Microsoft.Network/networkSecurityGroups/securityRules/read",
    "Microsoft.Network/routeTables/read",
    "Microsoft.Network/routeTables/routes/read",
    "Microsoft.Network/publicIPAddresses/read",
    "Microsoft.Network/networkInterfaces/read",
    "Microsoft.Network/privateEndpoints/read",
    "Microsoft.Network/privateDnsZones/read"
]
```
5. Click **Save**, **Review + create**, and **Create**. Take screenshot: `challenge11-custom-role-definition.png`.

### Task 3: Security Group-Based Access Management
1. Go to **Microsoft Entra ID** > **Groups** > **New group**.
2. Type: `Security`, Name: `Azure-NetworkViewers`, click **Create**.
3. Go back to **Subscriptions** > [Subscription] > **Access control (IAM)** > **+ Add** > **Add role assignment**.
4. Search for `Contoso Network Viewer` > **Next**.
5. Select **Group**, click **+ Select members**, and add `Azure-NetworkViewers`. Click **Review + assign**. Take screenshot: `challenge11-group-role-assignment.png`.

### Task 4: Attribute-Based Access Control (ABAC) Implementation
1. Create a Storage Account, go to **Containers**, and create `campaign-assets`.
2. Upload two files. Tag File A: `Department=Marketing`, File B: `Department=HR`.
3. Go to Storage Account **Access control (IAM)** > **+ Add role assignment**.
4. Select `Storage Blob Data Reader` > **Next**.
5. Pick your test user > **Next**.
6. **Conditions tab:** Click **+ Add condition**, switch editor to **Code**, and paste the logic restricting access to `Marketing` department tags.
7. Click **Save**, then **Review + assign**. Take screenshot of denial: `challenge11-abac-denial-verification.png`.

### Task 5: Automated Identity Governance Access Reviews
1. Search for **Privileged Identity Management** > **Azure resources** > [Your Subscription].
2. Click **Access reviews** > **+ New**.
3. Name: `Monthly Owner Check`, Role: `Owner`, Reviewer: `Yourself`.
4. Open **Upon completion settings**, turn on **Auto apply results to resource**.
5. Click **Start**. Take screenshot: `challenge11-access-review-active.png`.

## Testing and Verification
1. Validate ABAC by attempting to access storage blobs with conflicting tags as a restricted user.
2. Verify access revocation by approving/denying requests in the PIM Access Review dashboard.

## References
- [Azure RBAC Documentation](https://learn.microsoft.com/en-us/azure/role-based-access-control/overview)
