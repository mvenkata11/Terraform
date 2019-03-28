

resource "aws_key_pair" "tf_auth" {

key_name = "${var.key_name}"
public_key = "${file(var.public_key_path)}"

}

#.........Ec2 Resource.....

data "template_file" "user-init" {
count =2
template ="${file("${path.module}/userdata${count.index+1}.tpl")}"

vars { 
firewall_subnets = "${var.subnet_ip}"

    }
}

resource "aws_instance" "tf_server" {

count ="${var.instance_count}"
instance_type ="${var.instance_type}"
ami ="${var.ami_id}"
private_ip ="${element(var.private_ip,count.index)}"
key_name = "${aws_key_pair.tf_auth.id}"
vpc_security_group_ids = ["${var.security_group}"]
subnet_id ="${var.subnet}"
user_data = "${data.template_file.user-init.*.rendered[count.index]}"

tags{
Name ="tf_server-${count.index+1}"
   }

}
