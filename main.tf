terraform {
    required_providers {
        okta = {
            source = "okta/okta"
            version = "~> 6.4.0"
        }
    }
}

provider "okta" {
 org_name = var.org_name
 base_url = var.base_url
 api_token = var.api_token
}

resource "okta_group" "example"{
    name = "My New Okta Group"
    description = "Trying to create it on my own entirely"
}