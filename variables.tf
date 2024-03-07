# Define the values for the variables

variable "panos_hostname" {
  type    = string
  default = "10.180.180.4"
}

variable "panos_username" {
  type    = string
  default = "api-user"
}

variable "panos_password" {
  type    = string
  default = "apiuser"
}
