variable "image_id" {
  type = string
}
provider "github" {
    token = var.image_id
}

resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility  = "public"
}
