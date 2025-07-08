
module "ec2"{
    source          = "./modules/ec2/"
    for_each        = var.instances
    
    
}