# Create an Anti-Spyware Security Profile
data "panos_anti_spyware_security_profile" "example" {
    name = panos_anti_spyware_security_profile.x.name
}

resource "panos_anti_spyware_security_profile" "x" {
    name = "AS"
    device_group = "shared" 
    description = "Made by Terraform "
    sinkhole_ipv4_address = "pan-sinkhole-default-ip"
    sinkhole_ipv6_address = "::1"
#    botnet_list {
#        name = "default-paloalto-dns"
#        action = "sinkhole"
#        packet_capture = "disable"
#    }
#    botnet_list {
#        name = "default-paloalto-cloud"
#        action = "allow"
#        packet_capture = "disable"
#    }
    rule {
        name = "Critical-High"
        threat_name = "any"
        category = "any"
        action = "reset-both"
        packet_capture = "disable"
        severities = ["critical", "high"]
        }
    rule {
    	name = "Medium"
    	threat_name = "any"
    	category = "any" 
    	action = "alert" 
    	packet_capture = "disable"
    	severities = ["medium"]
    	}
    rule { 
    	name = "Info-Low "
    	threat_name = "any"
    	category = "any"
    	action = "default"
    	packet_capture = "extended-capture" 
    	severities = ["low", "informational"]
    	}
    
 #   exception {
 #       name = data.panos_predefined_threat.dot_net.threats.0.name
 #       action = "allow"
 #   }
}

#data "panos_predefined_threat" "dot_net" {
#    threat_type = "phone-home"
#    threat_name = "Generic .NET Framework C# Webshell Upload Detection"
#}
