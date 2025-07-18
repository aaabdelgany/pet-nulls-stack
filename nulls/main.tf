# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.1.1"
    }
    time = {
      source = "hashicorp/time"
      version = "0.13.1"
    }
  }
}

variable "pet" {
  type = string
}

variable "instances" {
  type = number
}

resource "time_sleep" "wait_1_minute" {
  create_duration = "60s"
}

resource "null_resource" "this" {
  depends_on = [time_sleep.wait_1_minute]
  count = var.instances

  triggers = {
    pet = var.pet
  }
}

output "ids" {
  value = [for n in null_resource.this: n.id]
}
