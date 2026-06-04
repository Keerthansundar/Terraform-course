output "ec2_public_ip" {
  value = [
    for i in aws_aws_instance.my_instance : i.public_ip
  ]
}

output "ec2_public_dns" {
  value = [
    for i in aws_aws_instance.my_instance : i.public_dns
  ]
}

output "ec2_private_ip" {
  value = [
    for i in aws_aws_instance.my_instance : i.private_ip
  ]
}

