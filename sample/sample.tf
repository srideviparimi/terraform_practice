provider "aws" {
    region = "us-east-1"

}
resource "aws_instance" "web_instance1"{
    ami = var.ami_v
    instance_type = var.instance_type
    tags={
        Name = var.sName["frontend"]
    }
}
resource "aws_instance" "web_instance2"{
    ami = var.ami_v
    instance_type = var.instance_type
    tags={
      Name = var.sName["mongodb"]
    }
}
resource "aws_instance" "web_instance3"{
   ami = var.ami_v
    instance_type =var.instance_type
    tags={
        Name = var.sName["catalogue"]
    }
}
