# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

variable "prefix" {
  type = string
}

module "random" {
  source  = "tfcdev-edbf8d57.ngrok.io/abdutest/module/random"
  version = "0.4.1"
  
  prefix = var.prefix
}

output "name" {
  value = module.random.name
}

output "number" {
  value = module.random.number
}