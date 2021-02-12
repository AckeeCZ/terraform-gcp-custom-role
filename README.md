# Terraform module that creates custom role for GCP project

## Usage

```hcl
module "custom_role" {
  source  = "AckeeCZ/custom-role/gcp"
  version = "1.0.0"

  project     = "${var.project}"
  role_id     = "company.entity.scope"
  title       = "Custom role"
  description = "Custom role description"
}
```
