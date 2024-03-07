# Declare PAN-OS Terraform provider, with a version constraint test

terraform {
  required_providers {
    panos = {
      source = "paloaltonetworks/panos"
      #version = "~> 1.11.0"
    }
  }
}

# Configure the PAN-OS Terraform provider with hostname and administrative credential variables

provider "panos" {
  hostname = var.panos_hostname
  username = var.panos_username
  password = var.panos_password
}
