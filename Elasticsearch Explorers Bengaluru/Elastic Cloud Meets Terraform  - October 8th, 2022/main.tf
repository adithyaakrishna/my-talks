# Elastic Meetup - October 2022

# This block contains terraform settings, including the required providers Terraform will use to provision your infrastructure
terraform {
  required_providers {
    aws = {
      # Defines an optional hostname, a namespace, and the provider type
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

# It is a plugin that Terraform uses to create and manage your resources and this block configures the specified provider
provider "aws" {
  region = "us-west-2"
}

# A resource might be a physical or virtual component such as an EC2 instance, or it can be a logical resource
resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ElasticMeetupOct"
  }
}
