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
Last version tested | Terraform 4.1 and oci 4.115

## Simple config. ❤️

main.tf
```
module "datalake" {
  source           = "wiseupdata/datalake/oci"
  version          = "0.0.1"
  bucket_namespace = var.bucket_namespace
  tenancy_ocid     = var.tenancy_ocid
}
```

## Features ✨️

- Auto-generated tags
- Auto-generated the compartment
- Apply's the Standard, environment as suffix
- Variables are optionals and can be overwrite with a custom value

## Create the resources🤜

```
terraform init
terraform fmt -recursive
terraform validate
terraform plan -out plan.output
terraform apply plan.output
```

Check the result🏅

---

![](assets/result.gif)

---

# Clean the resources 🏳

```
terraform destroy -auto-approve
cd ..
rm -Rf tmp
```

<br>
<br>

# References🤘

1. [Wise Up Data - Github](https://github.com/wiseupdata)

---

<br>


<br><br>
---

#### Maintainer 🤗 👨‍💻

Sivio Liborio

📧 silvio.liborio@wiseupdata.com

<a href="https://www.linkedin.com/in/silvio-de-melo-liborio">silvio-de-melo-liborio <img align="left" alt="LinkedIN" width="18px" src="https://raw.githubusercontent.com/wiseupdata/wsl-latest/main/assets/linkedin.svg" />
</a>
