# Full Stack Rent-A-Car System

This repository contains the source code and infrastructure configuration for a Full-Stack Rent-A-Car System.

## Project Structure

The project is organized into the following directories:

- **Back-End**: Contains the .NET Core application for the back-end services.
- **Front-End/recap-project**: Houses the Angular front-end application.
- **terraform**: Contains Terraform configurations for deploying infrastructure on Azure.

## GitHub Workflows

The `.github/workflows` directory contains GitHub Actions workflows for automating different aspects of the project. Below are details about each workflow:

### 1. [Sql.yml](.github/workflows/sql.yml)

This workflow is triggered on push to the `main` branch, specifically for changes in the `Back-End` directory. It performs SQL-related actions using Azure SQL.

### 2. [azure-webapps-angular-frontend.yml](.github/workflows/azure-webapps-angular-frontend.yml)

This workflow automates the build and deployment of the Angular Frontend to Azure Web App.

#### Environment Variables

- `AZURE_WEBAPP_NAME`: Azure Web App name
- `AZURE_WEBAPP_PACKAGE_PATH`: Path to Front-End directory
- `ACR_NAME`: Azure Container Registry name
- `ACR_USERNAME`: Azure Container Registry username
- `ACR_PASSWORD`: Azure Container Registry password

### 3. [azure-webapps-dotnet-core.yml](.github/workflows/azure-webapps-dotnet-core.yml)

This workflow automates the build and deployment of the .NET Core Back-End to Azure Web App.

#### Environment Variables

- `AZURE_WEBAPP_NAME`: Azure Web App name
- `AZURE_WEBAPP_PACKAGE_PATH`: Path to Back-End directory
- `ACR_NAME`: Azure Container Registry name
- `ACR_USERNAME`: Azure Container Registry username
- `ACR_PASSWORD`: Azure Container Registry password

### 4. [terraform.yml](.github/workflows/terraform.yml)

This workflow is triggered on push to the `main` branch with changes in the `terraform` directory. It automates the Terraform deployment using Azure credentials.

#### Environment Variables

- `ARM_CLIENT_ID`
- `ARM_CLIENT_SECRET`
- `ARM_SUBSCRIPTION_ID`
- `ARM_TENANT_ID`

### Terraform Scripts

The `terraform` directory contains Terraform scripts for deploying infrastructure on Azure. Secrets such as Azure credentials are stored securely using GitHub Secrets Manager.

## Dockerfiles

Dockerfiles have been added to enhance containerization for the project.

- Angular Frontend Dockerfile
- .NET Core Backend Dockerfile

Feel free to explore each directory for more details and customize workflows as per your project requirements.
