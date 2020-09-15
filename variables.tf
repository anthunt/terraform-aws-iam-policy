
variable "aws" {
  type = object({
    region  = string
    profile = string
  })
}

variable "policies" {
  type = map(object({
    path        = string
    description = string
    policy      = string
  }))
}
