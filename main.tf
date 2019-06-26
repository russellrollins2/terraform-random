resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 8
}

variable "name" {
  type = string
  default = "Casey"
}

output "random" {
  value = random_id.random.hex
}
