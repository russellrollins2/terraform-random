resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 120
}

output "random" {
  value = "${random_id.random.hex}"
}
variable "test_var" { }

output "no_good" {
  value = "${var.test_var}"
}
