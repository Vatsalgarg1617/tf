variable "github_token" {default =""}
provider "github" {
  token = "${var.github_token}"
}

resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility  = "public"
}
