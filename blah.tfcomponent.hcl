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
    source = "hashicorp/random"
    version = "3.8.0"
  }
}

provider "random" "this" {}

component "pet" {
  source = "./pet"
  providers = {
    random = provider.random.this
  }
}
