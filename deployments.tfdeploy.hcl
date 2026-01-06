# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment "complex" {
  migrate = true
  inputs = {
    prefix           = "complex"
    instances        = 7
  }
}
