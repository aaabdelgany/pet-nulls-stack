# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0 

variable "prefix" {
  type = string
}

variable "instances" {
  type = number
}

required_providers {
  random = {
    source  = "tfcdev-edbf8d57.ngrok.io/abdutest/random"
    version = "~> 0.4.1"
  }
}

provider "random" "this" {}

component "pet" {
  source = "./pet"

  inputs = {
    prefix = var.prefix
  }

  providers = {
    random = provider.random.this
  }
}
