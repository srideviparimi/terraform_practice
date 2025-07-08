variable "instances" {}
variable "ami" {}
variable "env" {}

resource "aws_instance" "web_instance"{
    for_each        = var.instances
    ami             = var.ami
    instance_type   = each.value["instance_type"]
    tags            = {
        Name        =   "${each.key}-${var.env}"
    }
}