# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "simple" {
  inputs = {
    prefix           = "simple"
    instances        = 7
  }

  deployment_group = deployment_group.custom1
}

deployment_group "custom1" {}

deployment "complex" {
  inputs = {
    prefix           = "complex"
    instances        = 7
  }
}


deployment_auto_approve "no_destroy" {
  check {
    condition = context.plan.changes.remove == 0
    reason    = "Plan removes ${context.plan.changes.remove} resources."
  }
}
