

resource "aws_instance" "web_instance"{
    instance_type    = var.instance_type
    ami              = var.ami
    
    
}