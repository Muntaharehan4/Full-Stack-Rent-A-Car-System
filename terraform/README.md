# Terraform Azure Infrastructure Deployment

## Overview

This Terraform script deploys Azure resources to support a multi-tier web application. The infrastructure includes a resource group, SQL Server, SQL Database, Virtual Network, Subnet, Linux App Service Plan, two Linux Web Apps, Azure Key Vault, and an Azure Container Registry. Additionally, connections are established between the web apps and a subnet.

## File Structure

- **main.tf**: Contains the main Terraform configuration for creating Azure resources.
- **output.tf**: Defines output variables to display information after resource creation.
- **providers.tf**: Specifies the required Terraform providers and versions.
- **variables.tf**: Declares input variables used in the Terraform configuration.

## Prerequisites

Before running the Terraform script, make sure you have:

- [Terraform](https://www.terraform.io/downloads.html) installed.
- Azure CLI installed and configured.
- Azure subscription and permissions to create resources.

## Usage

1. Clone the repository:

    ```bash
    git clone https://github.com/yourusername/your-terraform-repo.git
    cd your-terraform-repo
    ```

2. Initialize Terraform:

    ```bash
    terraform init
    ```

3. Review the execution plan:

    ```bash
    terraform plan
    ```

4. Apply the configuration:

    ```bash
    terraform apply
    ```

    Confirm with `yes` when prompted.

## Outputs

- After successful deployment, the following information will be displayed:
  - Resource Group Name
  - SQL Server Name
  - Admin Password (sensitive)

## Variables

- Modify the variables in `variables.tf` based on your requirements.

## Cleanup

To destroy the created resources, run:

```bash
terraform destroy
