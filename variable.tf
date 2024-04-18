variable "access_key" {}
variable "secret_key" {}
variable "region" {}
variable "vpc_cidr" {}
variable "vpc_name" {}
variable "igw_name" {}
variable "env" {
  
}
variable "public_subnets" {
    type = list
    default = [ "us-east-1a","us-east-1b","us-east-1c"]
}


variable "public_cidrs" {
    type = list
    default = [ "10.100.1.0/24","10.100.2.0/24","10.100.3.0/24","10.100..0/24","10.100.5.0/24","10.100.6.0/24"]
}

variable "private_subnets" {
    type = list
    default = [ "us-east-1a","us-east-1b","us-east-1c"]
}


variable "private_cidrs" {
    type = list
    default = [ "10.100.10.0/24","10.100.20.0/24","10.100.30.0/24","10.100.40.0/24","10.100.50.0/24","10.100.60.0/24"]
}

variable "amis" {
    description = "AMIs by region"
    default = {
        us-east-1 = "ami-04e5276ebb8451442" # ubuntu 22.04 LTS
		us-east-2 = "ami-0b8b44ec9a8f90422" # ubuntu 22.04 LTS
		us-west-1 = "ami-05c969369880fa2c2" # ubuntu 22.04 LTS
    }
}
