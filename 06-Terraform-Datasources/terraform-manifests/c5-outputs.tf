output "ec2_instance_publicip" {
  value = aws_instance.my-ec2-vm.public_ip
}

output "ec2_publicdns" {
  value = aws_instance.my-ec2-vm.public_dns
}