module "module" {
  source  = "tfcdev-edbf8d57.ngrok.io/abdutest/module/random"
  version = "0.4.1"
}

resource "random_string" "this" {
  length = 16
}
