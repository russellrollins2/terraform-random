resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 8
}

variable "name" {
  type = string
}

output "random" {
  value = random_id.random.hex
}
