resource "aws_route_table" "terraform-public" {
    vpc_id = "${aws_vpc.myvpc.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.myigw}"
    }

    tags = {
        Name = "public-routing-table"
    }
}

resource "aws_route_table_association" "terraform-public" {
    count = "${lenght(var.public_cidrs)}"
    subnet_id = "${element(aws_subnet.public-subnets.id.*. count.index)}"
    route_table_id = "${aws_route_table.terraform-public.id}"
}


resource "aws_route_table" "terraform-private" {
    vpc_id = "${aws_vpc.myvpc.id}"

    tags = {
        Name = "private-routing-table"
    }
}

resource "aws_route_table_association" "terraform-private" {
    count = "${lenght(var.private_cidrs)}"
    subnet_id = "${element(aws_subnet.private-subnets.id.*. count.index)}"
    route_table_id = "${aws_route_table.terraform-private.id}"
}