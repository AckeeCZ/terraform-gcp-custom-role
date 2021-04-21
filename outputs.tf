output "permissions" {
  description = "List of permissions given to the user"
  value       = local.permissions_all
}

output "id" {
  description = "Allows implicit dependency for resources"
  value       = google_project_iam_custom_role.developers.id
}
