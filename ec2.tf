

resource "aws_instance" "web-1" {
    count = 3
    ami = "ami-0d857ff0f5fc4e03b"
    instance_type = "t2.micro"
    key_name = "vpc-1"
    subnet_id = "${element(aws_subnet.public-subnets.id.*. count.index)}"
    vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
    associate_public_ip_address = true	
    tags = {
        Name = "Server-${count.index+1}"
        Env = "Prod"
        Owner = "Sree"
	CostCenter = "ABCD"
    }
}