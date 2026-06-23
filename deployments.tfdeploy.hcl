# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

store "varset" "prefix_vars" {
  id      = "varset-uSMZnNvg2Ye6PDP1"
  category = "terraform"
}

deployment "simple" {
  inputs = {
    prefix    = store.varset.prefix_vars.stable.simple_prefix
    instances = 7
  }
}

deployment "complex" {
  inputs = {
    prefix    = store.varset.prefix_vars.stable.complex_prefix
    instances = 7
  }
}
