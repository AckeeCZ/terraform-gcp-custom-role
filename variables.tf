variable "project" {
  description = "Google cloud project name"
}

variable "role_id" {
  description = "Role IAM ID"
}

variable "title" {
  description = "Role readable title"
}

variable "description" {
  description = "Role readable description"
}

variable "roles" {
  description = "Roles to be merged into developer role"
  type        = list(string)
  default     = []
}

variable "permissions" {
  description = "Permissions to be merged into developer role"
  type        = list(string)
  default     = []
}

variable "remove_permissions" {
  description = "In some cases, the roles contains permissions which are not needed, remove them with this list"
  type        = list(string)
  default     = []
}
