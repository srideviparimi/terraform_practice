

resource "aws_instance" "web_instance"{
    for_each        = var.instances
    ami             = var.ami
    instance_type   = each.key["instance_type"]
    tags            = {
        Name        =   ${each.key}-${var.env}
    }
}