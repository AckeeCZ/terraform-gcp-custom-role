data "google_iam_role" "roles" {
  count = length(var.roles)
  name  = var.roles[count.index]
}

locals {
  # concat list of permissions with distinct permissions you want to remove -- thats cause user can have remove list like this one: ['a', 'a', ]
  # cautious! this works only because tf removes duplicates from the first duplicate item onwards
  list_with_item_in_front = distinct(concat(distinct(var.remove_permissions), flatten(data.google_iam_role.roles.*.included_permissions)))
  # and remove those, which have to be removed with slice
  permissions_removed = slice(
    local.list_with_item_in_front,
    length(distinct(var.remove_permissions)),
    length(local.list_with_item_in_front),
  )

  permissions_all = [
    var.permissions,
    local.permissions_removed,
  ]
}

resource "google_project_iam_custom_role" "developers" {
  project     = var.project
  role_id     = var.role_id
  title       = var.title
  description = var.description
  permissions = flatten(local.permissions_all)
}
