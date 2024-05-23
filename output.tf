data "aws_organizations_organization" "main" {
    provider = aws.root
}

locals {
    account-name = var.account_name
    account-index = index(data.aws_organizations_organization.main.accounts[*].name, local.account-name)
    account-id = data.aws_organizations_organization.main.accounts[local.account-index].id
}

output "account" {
    value = data.aws_organizations_organization.main.accounts[local.account-index]
}