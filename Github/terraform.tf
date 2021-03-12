variable "heroku_token" {}
variable "email" {}
provider "heroku" {
  email   = "${var.email}"
  api_key = "${var.heroku_token}"
}

resource "heroku_app" "example" {
  name = "Demo VM"
  region = "us"
}
