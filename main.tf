terraform {
  backend "remote" {
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