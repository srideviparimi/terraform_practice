module "ec2"{
    source          = "./modules/ec2/"
    for_each        = var.instances
    ami             = var.ami
    instance_type   = var.instance_type
    tags={
        Name = each.key
    }
}