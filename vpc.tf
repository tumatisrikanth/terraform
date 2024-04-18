resource "aws_vpc" "myvpc" {
    cidr_block = var.vpc_cidr
    enable_dns_hostnames = true
    tags = {
      name = var.vpc_name
      env = "prod"
    }
  
}