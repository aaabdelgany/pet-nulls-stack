output "random_string_output_value" {
  value = "Application config output: ${random_string.id.result}"
  description = "Our random outputs"
}
