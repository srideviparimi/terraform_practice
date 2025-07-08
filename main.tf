
module "ec2" {
    for_each        = var.instances
    source          = "./modules/ec2/"
    instance_type   = each.value["instance_type"]
    name            = each.key
    ami             = var.ami
    env             = var.env
    zone_name       = var.zone_name
    zone_id         =var.zone_id
}