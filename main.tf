
module "ec2" {
    for_each        = var.instances
    source          = "./modules/ec2/"
    instance_type   = each.value["instance_type"]
    ami             = var.ami
    env             = var.env
    
}