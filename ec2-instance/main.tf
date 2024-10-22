
resource "aws_instance" "ec2-instance" {
    ami = var.ami
    instance_type = var.instance_type

    tags {
        Name = var.instance_name
    }

    key_name = "ssh_key"
    vpc_security_group_ids = [aws_security_group.id]
}