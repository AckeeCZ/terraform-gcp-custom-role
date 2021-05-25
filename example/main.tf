variable "project" {}
variable "zone" {}

provider "google" {
  version = "~> 3.69.0"
  project = var.project
  region  = var.zone
}

module "developer_role" {
  source      = "../"
  project     = var.project
  role_id     = "company.entity.scope"
  title       = "Custom role"
  description = "Custom role description"

  roles = [
    "roles/storage.objectCreator",
    "roles/storage.objectViewer",
  ]
}

output "permissions" {
  value = module.developer_role.permissions
}

output "id" {
  value = module.developer_role.id
}
