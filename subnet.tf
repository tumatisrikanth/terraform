resource "aws_subnet" "public_subnets" {
    count = "${lenght(var.public_cidrs)}"
    vpc_id = "${aws_vpc.myvpc.id}"
    availability_zone = "${element(var.public_subnets, count.index)}"
    cidr_block = "${element(var.public_cidrs, count.index)}"

    tags = {
        Name = "public-subnet-${count.index}"
    }
}


resource "aws_subnet" "private_subnets" {
    count = "${lenght(var.private_cidrs)}"
    vpc_id = "${aws_vpc.myvpc.id}"
    availability_zone = "${element(var.private_subnets, count.index)}"
    cidr_block = "${element(var.private_cidrs, count.index)}"

    tags = {
        Name = "private-subnet-${count.index}"
    }
}