variable "instances" {}
variable "ami" {}
variable "env" {}
module "ec2"{
    source          = "./modules/ec2/"
}