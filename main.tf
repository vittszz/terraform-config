terraform {
  required_providers {
    port = {
      source  = "port-labs/port-labs"
      version = "~> 1.0.0"
    }
  }
}

provider "port" {
  client_id = "{YOUR CLIENT ID}"  
  secret    = "{YOUR CLIENT SECRET}" 
}

resource "port_entity" "myEntity" {
  identifier = "myEntity" # Entity identifier
  title      = "My Entity" # Entity title
  blueprint  = "myBlueprint" # Identifier of the blueprint to create this entity from

  properties = {
    string_props = {
      "myStringProp" = "My string"
      }

    number_props = {
      "myNumberProp" = 7
      }

    array_props = {
      string_items = {
        "myArrayProp" = ["a", "b", "c"]
        }
      }
}
  
}
