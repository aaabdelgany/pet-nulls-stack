# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "simple" {
  inputs = {
    prefix           = "simple"
    instances        = 7
  }
  deployment_group = deployment_group.custom
}

deployment_group "customweeeeeee" {}

deployment "complex" {
  inputs = {
    prefix           = "complex"
    instances        = 7
  }
}
