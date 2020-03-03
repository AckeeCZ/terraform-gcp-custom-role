# Terraform module that creates custom role for GCP project

## Usage

```hcl
module "custom_role" {
  source      = "git::ssh://git@gitlab.ack.ee/Infra/terraform-gcp-custom-role.git?ref=v1.0.0"
  project     = "${var.project}"
  role_id     = "company.entity.scope"
  title       = "Custom role"
  description = "Custom role description"
}
```
