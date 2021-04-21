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

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_project_iam_custom_role.developers](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_custom_role) | resource |
| [google_iam_role.roles](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/iam_role) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Role readable description | `any` | n/a | yes |
| <a name="input_permissions"></a> [permissions](#input\_permissions) | Permissions to be merged into developer role | `list(string)` | `[]` | no |
| <a name="input_project"></a> [project](#input\_project) | Google cloud project name | `any` | n/a | yes |
| <a name="input_remove_permissions"></a> [remove\_permissions](#input\_remove\_permissions) | In some cases, the roles contains permissions which are not needed, remove them with this list | `list(string)` | `[]` | no |
| <a name="input_role_id"></a> [role\_id](#input\_role\_id) | Role IAM ID | `any` | n/a | yes |
| <a name="input_roles"></a> [roles](#input\_roles) | Roles to be merged into developer role | `list(string)` | `[]` | no |
| <a name="input_title"></a> [title](#input\_title) | Role readable title | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Allows implicit dependency for resources |
| <a name="output_permissions"></a> [permissions](#output\_permissions) | List of permissions given to the user |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
