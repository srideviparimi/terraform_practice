variable "sName"{
    default ={
        frontend = "frontend",
        mongodb = "mongodb",
        catalogue="catalogue"

    }
}
variable "ami_v" {
    default= "ami-09c813fb71547fc4f"
}
variable "instance_type" {
    default= "t3.micro"
}
