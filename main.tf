
resource "aws_iam_policy" "policy" {

  for_each = var.policies

  name        = each.key
  path        = each.value.path
  description = each.value.description

  policy = each.value.policy
}
