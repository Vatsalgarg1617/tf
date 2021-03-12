variable "heroku_token" {}
provider "heroku" {
  email   = "vatsalgarg17@gmail.com"
  api_key = "${var.heroku_token}"
}

resource "heroku_app" "example" {
  name = "Demo VM"
  region = "us"
}
