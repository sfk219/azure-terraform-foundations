# Azure Terraform Foundations

Runnable **Terraform configuration** for resource group, virtual network, subnet, network security group, and subnet-to-NSG association in Microsoft Azure.

## Validate without deploying
```bash
terraform init -backend=false
terraform fmt -check
terraform validate
```

## Deploy (requires an Azure account and costs may apply)
```bash
cp terraform.tfvars.example terraform.tfvars
# Replace the placeholder Azure subscription ID, and authenticate with az login.
terraform init
terraform plan
terraform apply
# When finished:
terraform destroy
```

**Tech:** Terraform, Azure, cloud networking, infrastructure as code. Configuration is a portfolio example; no deployment or cloud resource provisioning is claimed.