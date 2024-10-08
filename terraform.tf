terraform {

  # backend "local" {
  #   path = "./state/terraform.tfstate"
  # }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "mikayilov"
    workspaces {
      name = "mikayilov"
    }

  }

  required_version = ">=1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.4.3"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.2"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.5.1"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.5"
    }
  }
}