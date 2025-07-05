provider "aws" {
    region = "us-east-1"

}
variable "sName"{
    default ={
        frontend = "frontend",
        mongodb = "mongodb",
        catalogue="catalogue"

    }
}
variable "ami_v" {
    default= "ami-09c813fb71547fc4f"
}
variable "instance_type" {
    default= "t3.micro"
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
      Name = var.sName["frontend"]
    }
}
resource "aws_instance" "web_instance3"{
   ami = var.ami_v
    instance_type =var.instance_type
    tags={
        Name = var.sName["frontend"]
    }
}
