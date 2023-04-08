Easy create a Data Lake / Delta Lake!

--- 

<a href="https://github.com/wiseupdata/wiseupdata">
  <img align="left" alt="Wise Up Data's Instagram" width="22px" src="https://raw.githubusercontent.com/wiseupdata/wiseupdata/main/assets/instagram.png" />   
</a> 
<a href="https://github.com/wiseupdata/wiseupdata">
  <img align="left" alt="wise Up Data's Discord" width="22px" src="https://raw.githubusercontent.com/wiseupdata/wiseupdata/main/assets/discord.png" />
</a>
<a href="https://github.com/wiseupdata/wiseupdata">
  <img align="left" alt="wise Up Data | Twitter" width="22px" src="https://raw.githubusercontent.com/wiseupdata/wiseupdata/main/assets/twitter.png" />
</a>
<a href="https://github.com/wiseupdata/wiseupdata">
  <img align="left" alt="wise Up Data's LinkedIN" width="22px" src="https://raw.githubusercontent.com/wiseupdata/wiseupdata/main/assets/linkedin.png" />
</a>

![visitors](https://visitor-badge.glitch.me/badge?page_id=wiseupdata.terraform-oci-datalake&left_color=green&right_color=black)
![GitHub](https://img.shields.io/github/license/wiseupdata/terraform-oci-datalake)

---

<h1>
<img align="left" alt="img" src="https://raw.githubusercontent.com/wiseupdata/terraform-oci-datalake/main/assets/terraform.png" width="100" />

Module - Create a Data Lake / Delta Lake 🚀️

</h1>
Last version tested | Terraform 4.1 and azurerm 3.48

## Simple config. ❤️


<img align="center" alt="img" src="https://raw.githubusercontent.com/wiseupdata/terraform-oci-datalake/main/assets/under_construction.gif" width="600" />


main.tf

```
module "datalake" {
  source  = "wiseupdata/datalake/oci"
  version = "0.0.1"
  areas = ["data", "sales"]
}
```

## Features ✨️

- Auto-generated tags
- Auto-generated the compartment
- Apply's the Standard, environment as suffix
- All variables are optionals and can be overwrite with a custom value

## Config. 2 👋

main.tf

```
module "databricks_workspaces" {
  source  = "wiseupdata/databricks_workspaces/azurerm"
  version = "0.0.1"
  areas   = ["data", "mkt"]
  existent_rg_name = "your_resource_group_name"
  company_name = "your_company_name"
  company_abrv = "your_company_abbreviation"
}
```

## Hello world 🎉

> with az cli logged and with the right permissions! `az login` 👀️

Create a new directory.

```
mkdir tmp && cd tmp 
```

Create the main file with some infos.

```
cat <<EOF > main.tf
module "databricks_workspaces" {
  source  = "wiseupdata/databricks_workspaces/azurerm"
  version = "0.0.1"
}

provider "azurerm" {
  features {}
}

output "databricks_workspaces_outputs" {
  value = module.databricks_workspaces
}
EOF
```

Create the resources in Azure 🤜

```
terraform init
terraform fmt -recursive
terraform validate
terraform plan -out plan.output
terraform apply plan.output
```

Check the result🏅

---

![](https://raw.githubusercontent.com/wiseupdata/terraform-oci-datalake/main/assets/20230321_212542_image.png)

![](https://raw.githubusercontent.com/wiseupdata/terraform-oci-datalake/main/assets/20230321_211843_image.png)

---

# Clean the resources 🏳

```
terraform destroy -auto-approve
cd ..
rm -Rf tmp
```

## Config. 3 used in the hello world 🏁

main.tf

```
module "databricks_workspaces" {
  source  = "wiseupdata/databricks_workspaces/azurerm"
  version = "0.0.1"
}
```

# References🤘

1. [Wise Up Data - Github](https://github.com/wiseupdata)

---

<br>

# Troubleshoot 😕

Recreate a workspace!

```
# Find all your resources!
terraform state list 

# Recreate the one with issue
terraform apply -replace=module.azure_main.module.databricks_workspaces.azurerm_databricks_workspace.this[0]
```

<br><br>
---

#### Maintainer 🤗 👨‍💻

Sivio Liborio

📧 silvio.liborio@wiseupdata.com

<a href="https://www.linkedin.com/in/silvio-de-melo-liborio">silvio-de-melo-liborio <img align="left" alt="LinkedIN" width="18px" src="https://raw.githubusercontent.com/wiseupdata/wsl-latest/main/assets/linkedin.svg" />
</a>
