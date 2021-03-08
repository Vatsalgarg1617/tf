variable "token" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = ""
}
provider "github" {
  token = var.token
}

resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility  = "public"
}
