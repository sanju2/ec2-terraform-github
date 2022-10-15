terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.26.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
  required_version = ">= 1.1.0"

  cloud {
    organization = "hashicorp-terraform-learn"

    workspaces {
      name = "terraform-learn"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0f924dc71d44d23e2"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}