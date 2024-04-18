

resource "aws_instance" "web-1" {
      # condition ? true : false
    count = "${var.env == "prod" ? 2 : 1 }"
    ami = "${lookup(var.amis,var.region)}"
    instance_type = "t2.micro"
    key_name = "vpc-1"
    subnet_id = "${element(aws_subnet.public-subnets.id.*. count.index)}"
    vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
    associate_public_ip_address = true	
    tags = {
        Name = "Server-${count.index+1}"
        Env = "var.env"
        Owner = "Sree"
	CostCenter = "ABCD"
    }
    user_data = <<-EOF
    #! /bin/bash
    sudo apt-get update
    sudo apt-get install -y nginx
    sudo systemctl start nginx
    sudo systemctl enable nginx
    echo "The page was created by the user data" | sudo tee /var/www/html/index.html/
    EOF

}