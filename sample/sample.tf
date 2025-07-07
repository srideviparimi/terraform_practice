provider "aws" {
    region = "us-east-1"

}
variable "instance_type" {}
variable "sNmae" {}
resource "aws_instance" "web_instance1"{
    for_each = var.sName
    ami = "ami-09c813fb71547fc4f"
    instance_type = each.value ["instance_type"]
    tags={
        Name = each.key
    }
}
 
