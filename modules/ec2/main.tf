resource "aws_instance" "web_instance"{
   
    instance_type    = var.instance_type
    ami              = var.ami
    
}


resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name    = "${var.name}-${var.env}"
  type    = "A"
  ttl     = 30
  records = [aws_instance.web_instance.private_ip]
}