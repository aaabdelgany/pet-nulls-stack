# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

deployment_auto_approve "auto_approve_all" {
  check {
    condition = context.success == true
    reason    = "Operation failed and needs manual intervention."
  }
}

deployment "simple-generated-1" {
  inputs = {
    prefix    = "simple-generated-1"
    instances = 10
  }
}

deployment "simple-generated-2" {
  inputs = {
    prefix    = "simple-generated-2"
    instances = 10
  }
}

deployment "simple-generated-3" {
  inputs = {
    prefix    = "simple-generated-3"
    instances = 10
  }
}

deployment "simple-generated-4" {
  inputs = {
    prefix    = "simple-generated-4"
    instances = 10
  }
}

deployment "simple-generated-5" {
  inputs = {
    prefix    = "simple-generated-5"
    instances = 10
  }
}

deployment "simple-generated-6" {
  inputs = {
    prefix    = "simple-generated-6"
    instances = 10
  }
}

deployment "simple-generated-7" {
  inputs = {
    prefix    = "simple-generated-7"
    instances = 10
  }
}

deployment "simple-generated-8" {
  inputs = {
    prefix    = "simple-generated-8"
    instances = 10
  }
}

deployment "simple-generated-9" {
  inputs = {
    prefix    = "simple-generated-9"
    instances = 10
  }
}

deployment "simple-generated-10" {
  inputs = {
    prefix    = "simple-generated-10"
    instances = 10
  }
}

deployment "simple-generated-11" {
  inputs = {
    prefix    = "simple-generated-11"
    instances = 10
  }
}

deployment "simple-generated-12" {
  inputs = {
    prefix    = "simple-generated-12"
    instances = 10
  }
}

deployment "simple-generated-13" {
  inputs = {
    prefix    = "simple-generated-13"
    instances = 10
  }
}

deployment "simple-generated-14" {
  inputs = {
    prefix    = "simple-generated-14"
    instances = 10
  }
}

deployment "simple-generated-15" {
  inputs = {
    prefix    = "simple-generated-15"
    instances = 10
  }
}

deployment "simple-generated-16" {
  inputs = {
    prefix    = "simple-generated-16"
    instances = 10
  }
}

deployment "simple-generated-17" {
  inputs = {
    prefix    = "simple-generated-17"
    instances = 10
  }
}

deployment "simple-generated-18" {
  inputs = {
    prefix    = "simple-generated-18"
    instances = 10
  }
}

deployment "simple-generated-19" {
  inputs = {
    prefix    = "simple-generated-19"
    instances = 10
  }
}

deployment "simple-generated-20" {
  inputs = {
    prefix    = "simple-generated-20"
    instances = 10
  }
}
