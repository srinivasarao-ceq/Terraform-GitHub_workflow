# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
  required_version = ">= 1.1.0"
}

provider "aws" {
  region = "us-east-1"
}


resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"  # Adjust the CIDR block based on your requirements

  tags = {
    Name = "MyVPC"
  }
}
