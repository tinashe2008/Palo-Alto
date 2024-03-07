# Create an Wildfire Profile 
data "panos_wildfire_analysis_security_profile" "example" {
  name = panos_wildfire_analysis_security_profile.WF.name
}

resource "panos_wildfire_analysis_security_profile" "WF" {
  name         = "WF-Profile"
  device_group = "shared"

  description = "made by Terraform"
  rule {
    name         = "wf-rule"
    applications = ["any"]
    file_types   = ["any"]
    direction    = "both"
    analysis     = "public-cloud"
  }
}

