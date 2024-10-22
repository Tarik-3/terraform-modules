
resource "aws_security_group" "sec-g{

    name = "sg"
    ingress {
        from_port = var.sg_from_port
        to_port = var.sg_to_port
        cidr_block = var.cidr
        protocol = "tcp"

    }
}