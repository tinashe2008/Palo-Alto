# Create an Anti-Virus Security Profile testing github
resource "panos_antivirus_security_profile" "TerraForm-AV" {
  name         = "AV Protection"
  device_group = "shared"
  description  = "Example AV profile"
  packet_capture = "true"

  decoder {
    name            = "smtp"
    action          = "reset-both"
    wildfire_action = "reset-both"
    machine_learning_action = "reset-both"
  }

  decoder {
    name            = "smb"
    action          = "default"
    wildfire_action = "default"
    machine_learning_action = "reset-both"
  }
  decoder {
    name            = "pop3"
    action          = "default"
    wildfire_action = "default"
    machine_learning_action = "reset-both"
  }
  decoder {
    name            = "imap"
    action          = "default"
    wildfire_action = "default"
    machine_learning_action = "reset-both"
  }
  decoder {
    name            = "http"
    action          = "default"
    wildfire_action = "default"
    machine_learning_action = "reset-both"
  }
  decoder {
    name            = "http2"
    action          = "default"
    wildfire_action = "default"
    machine_learning_action = "reset-both"
  }
  decoder {
    name            = "ftp"
    action          = "default"
    wildfire_action = "default"
    machine_learning_action = "reset-both"
  }
  machine_learning_model {
    model = "Windows Executables"
    action = "enable"
  }
  machine_learning_model {
    model = "PowerShell Script 1"
    action = "enable"
  }
  machine_learning_model {
    model = "PowerShell Script 2"
    action = "enable"
  }
  machine_learning_model {
    model = "Executable Linked Format"
    action = "enable"
  }
  machine_learning_model {
    model = "MSOffice"
    action = "enable"
  }
  machine_learning_model {
    model = "Shell"
    action = "enable"
  }
}
