terraform {
 required_providers {
   aws = {
     source = "hashicorp/aws"
   }
 }

 backend "s3" {
   region = "ap-southeast-1"
   key    = "terraform.tfstate"
 }
}

provider "aws" {
 region = "ap-southeast-1"
}

resource "aws_instance" "test_instance" {
 ami           = "ami-0b94777c7d8bfe7e3"
 instance_type = "t2.nano"
 tags = {
   Name = "test_instance"
 }
}