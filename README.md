# Managing AWS IAM Policy for terraform

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/ed8e75d3a1194763b8a67582bbe3495b)](https://app.codacy.com/gh/anthunt/terraform-aws-iam-policy?utm_source=github.com&utm_medium=referral&utm_content=anthunt/terraform-aws-iam-policy&utm_campaign=Badge_Grade)

## 1. Module Usage
> ```terraform
> module "iam_groups" {
>    source    = "anthunt/iam-policy/aws"
>    version   = "0.0.1"
>    aws       = var.aws
>    groups     = var.groups
>}

## 2. Variables Sample
> ```terraform
> variable "aws" {
>  type = object({
>    region  = string
>    profile = string
>  })
>}
>
>variable "policies" {
>  type = map(object({
>    path        = string
>    description = string
>    policy      = string
>  }))
>}
> ````

## 3. tfvars Sample
> ```terraform
> aws = {
>    "region"  = "AWS Region ID"
>    "profile" = "AWS CLI Profile Name from ~/.aws/credentials or config"
> }
>
> policies = {
>    
>    PolicyName01 = {
>        "path" = "/"
>        "description" = "description"
>        "policy" = <<EOF
> policy json
> EOF
>    }
>
> }
> ```