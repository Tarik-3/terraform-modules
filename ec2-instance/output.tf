output "ec2-public-ip" {
    description = "The public ip of the server is:"
    value = aws_instance.ec2-instance.public_ip
}
