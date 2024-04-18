resource "null_resource" "cluser" {
        count = "${var.env == "prod" ? 2 : 1 }"
        provisioner "file" {
        source = "script.sh"
        destination = "tmp/script.sh"
        connection {
          type = "ssh"
          user = "ubuntu"
          private_key = "${file(vpc.pem)}"
          host = "${element(aws_instance.web-1.*.public_ip, count.index)}"
        }
      
    }
# remote-Exec provisioner
  provisioner "remote-exec" {
    inline = [ 
        "chmod +x /tmp/scritp.sh",
        "sudo ./tmp/script.sh",
        "sudo apt update -y",
        "sudo apt install cowsay unzip -y",
        "cowsay 'welcome to devops'"
     ]
     connection {
          type = "ssh"
          user = "ubuntu"
          private_key = "${file(vpc.pem)}"
          host = "${element(aws_instance.web-1.*.public_ip, count.index)}"
        }
     }
    
 }
