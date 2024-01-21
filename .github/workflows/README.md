# GitHub Workflows

This folder contains GitHub Actions workflows for automating different aspects of your project deployment and management.

## 1. Sql.yml

This workflow is triggered on push to the `main` branch, specifically for changes in the `Back-End` directory. It performs SQL-related actions using Azure SQL.

### Permissions

- **id-token**: write
- **contents**: read

### Jobs

#### Build

- **Runs on**: ubuntu-latest
- **Steps**:
  1. Checkout the repository.
  2. Azure login using secrets.
  3. Execute SQL actions using the specified connection string and script path.

## 2. azure-webapps-angular-frontend.yml

This workflow automates the build and deployment of the Angular Frontend to Azure Web App.

### Environment Variables

- `AZURE_WEBAPP_NAME`: Azure Web App name
- `AZURE_WEBAPP_PACKAGE_PATH`: Path to Front-End directory
- `ACR_NAME`: Azure Container Registry name
- `ACR_USERNAME`: Azure Container Registry username
- `ACR_PASSWORD`: Azure Container Registry password

### Trigger

Triggered on push to the `main` branch.

### Permissions

- **contents**: read
- **packages**: write

### Jobs

#### Build

- **Runs on**: ubuntu-latest
- **Steps**:
  1. Checkout the repository.
  2. Log in to Azure Container Registry.
  3. Build and push the container image to Azure Container Registry.

#### Deploy

- **Runs on**: ubuntu-latest
- **Environment**: Development
- **Steps**:
  1. Deploy to Azure Web App using the specified publish profile and container image.

## 3. azure-webapps-dotnet-core.yml

This workflow automates the build and deployment of the .NET Core Back-End to Azure Web App.

### Environment Variables

- `AZURE_WEBAPP_NAME`: Azure Web App name
- `AZURE_WEBAPP_PACKAGE_PATH`: Path to Back-End directory
- `ACR_NAME`: Azure Container Registry name
- `ACR_USERNAME`: Azure Container Registry username
- `ACR_PASSWORD`: Azure Container Registry password

### Trigger

Triggered on push to the `main` branch with changes in the specified path.

### Permissions

- **contents**: read
- **packages**: write

### Jobs

#### Build

- **Runs on**: ubuntu-latest
- **Steps**:
  1. Checkout the repository.
  2. Log in to Azure Container Registry.
  3. Build and push the container image to Azure Container Registry.

#### Deploy

- **Runs on**: ubuntu-latest
- **Environment**: Development
- **Steps**:
  1. Deploy to Azure Web App using the specified publish profile and container image.

## 4. terraform.yml

This workflow is triggered on push to the `main` branch with changes in the `terraform` directory. It automates the Terraform deployment using Azure credentials.

### Environment Variables

- `ARM_CLIENT_ID`
- `ARM_CLIENT_SECRET`
- `ARM_SUBSCRIPTION_ID`
- `ARM_TENANT_ID`

### Jobs

#### Terraform

- **Name**: Terraform
- **Runs on**: ubuntu-latest
- **Environment**: dev
- **Steps**:
  1. Checkout the repository.
  2. Setup Terraform with the specified version.
  3. Initialize Terraform.
  4. Generate Terraform execution plan.
  5. Apply Terraform changes (auto-approved).
