# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

store "varset" "prefix_vars" {
  id      = "varset-yqJEQx5zd1oqNM5j"
}

deployment "simple" {
  inputs = {
    prefix    = store.varset.prefix_vars.simple_prefix
    instances = 7
  }
}

deployment "complex" {
  inputs = {
    prefix    = store.varset.prefix_vars.complex_prefix
    instances = 7
  }
}
