variable "access_key" {}
variable "secret_key" {}
variable "region" {}
variable "vpc_cidr" {}
variable "vpc_name" {}
variable "igw_name" {}
variable "public_subnets" {
    type = list
    default = [ "us-east-1a","us-east-1b","us-east-1c"]
}


variable "public_cidrs" {
    type = list
    default = [ "10.100.1.0/24","10.100.2.0/24","10.100.3.0/24"]
}

variable "private_subnets" {
    type = list
    default = [ "us-east-1a","us-east-1b","us-east-1c"]
}


variable "private_cidrs" {
    type = list
    default = [ "10.100.10.0/24","10.100.20.0/24","10.100.30.0/24"]
}