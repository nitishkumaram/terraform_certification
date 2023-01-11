# Create 4 IAM Users
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user

resource "aws_iam_user" "myusers" {
  for_each = toset(["Tjack", "TJames", "TMadhu", "TDave"])
  name = each.value
}