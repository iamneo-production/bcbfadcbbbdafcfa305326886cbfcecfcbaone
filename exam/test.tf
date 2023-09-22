terraform {
  required_providers {
      aws = {
          source = "hashicorp/aws"
        }
    }
}
provider "aws" {
    region = "ap-northeast-1"
    access_key = "AKIA2GUVDVIV45RQRAJL"
    secret_key = "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"
}
resource "aws_instance" "exam" {
    ami = "ami-0ed99df77a82560e6"
    instance_type = "t2.micro"
}
output "public_ip"{
    value = aws_instance.exam.public_ip
}