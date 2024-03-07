# Create an File Blocking Profile
data "panos_file_blocking_security_profile" "example" {
  name = panos_file_blocking_security_profile.x.name
}

resource "panos_file_blocking_security_profile" "x" {
  name        = "FB-Alert"
  description = "made by Terraform"
  rule {
    name         = "Alert Rule"
    applications = ["any"]
    file_types   = ["any"]
    direction    = "both"
    action       = "alert"
  }
}
