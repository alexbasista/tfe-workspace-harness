variable "count" {
  type        = number
  description = "Count of random_pet."
  default     = 100
}

variable "length" {
  type        = number
  description = "Length of random_pet."
  default     = 10
}

resource "random_pet" "main" {
  count = var.count

  length    = var.length
  separator = "-"

  keepers = {
    always = timestamp()
  }
}