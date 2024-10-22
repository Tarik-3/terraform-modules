
resource "aws_key_pair" "ssh_key" {
    key_name = "ssh-key"
    public_ip = file("${var.public_ssh_path}")
}