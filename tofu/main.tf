resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo 'This is a test resource'"
  }
}
variable "test_env_name" {
  description = "a variable to test tfvars"
  type        = string
  default     = ""
}