# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
cloud {
    organization = "mikayilov"
    workspaces {
      name = "mikayilov"
    }
}

required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.55.0"
    }
  }
  required_version = "~> 1.2"
}