# Terraform module that creates custom role for GCP project

## Usage

```hcl
module "custom_role" {
  source  = "AckeeCZ/custom-role/gcp"

  project     = "${var.project}"
  role_id     = "company.entity.scope"
  title       = "Custom role"
  description = "Custom role description"
}
```
