VNET PEERING USING TERRAFORM
===
Abstract:xxx
## 
<!-- - Title:  `paper name`
- Authors:  `A`,`B`,`C`
- Preprint: [https://arxiv.org/abs/xx]()
- Full-preprint: [paper position]()
- Video: [video position]() -->

## Prerequisites
- Terraform
- Azure CLI
- Make






## Directory Hierarchy
```
|—— .env
|—— .env.example
|—— .gitignore
|—— .terraform
|    |—— providers
|        |—— registry.terraform.io
|            |—— hashicorp
|                |—— azurerm
|                    |—— 3.49.0
|                        |—— darwin_amd64
|                            |—— terraform-provider-azurerm_v3.49.0_x5
|    |—— terraform.tfstate
|—— .terraform.lock.hcl
|—— Makefile
|—— main.tf
|—— output.tf
|—— providers.tf
|—— storage
|    |—— providers.tf
|    |—— storage.tf
|    |—— terraform.tfstate
|    |—— variables.tf
|—— terraform.tfstate
|—— terraform.tfstate.backup
|—— variables.tf
```



## Use
```bash
cp .env.example .env

make deploy-storage
```
- Get the storage access_key from the azure portal and add it to the `.env` file

```bash
make deploy-vnet
```
