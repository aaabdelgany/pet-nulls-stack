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
    source  = "hashicorp/random"
    version = "~> 3.5.1"
  }

  null = {
    source  = "hashicorp/null"
    version = "~> 3.2.2"
  }
}

provider "random" "this" {}
provider "null" "this" {}

component "pet" {
  source = "./pet"

  inputs = {
    prefix = var.prefix
  }

  providers = {
    random = provider.random.this
    null = provider.nulls.this
  }
}

component "nulls" {
  source = "./nulls"

  inputs = {
    pet       = component.pet.name
    instances = var.instances
  }

  providers = {
    null = provider.null.this
  }
}

component "nils" {
  source = "./nulls"

  inputs = {
    pet = component.pet.name
    instances = component.pet.number
  }

  providers = {
    null = provider.null.this
  }
}

# dummy comment to trigger new plan