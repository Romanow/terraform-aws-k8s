terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
    cloudinit = {
      source = "hashicorp/cloudinit"
      version = ">= 2.2"
    }
    tls = {
      source = "hashicorp/tls"
      version = ">= 4.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.12"
    }
  }
  required_version = ">= 1.3"
}