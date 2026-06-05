output "ec2_public_ip" {
  value = [
    for i in aws_instance.my_instance : i.public_ip
  ]
}

output "ec2_public_dns" {
  value = [
    for i in aws_instance.my_instance : i.public_dns
  ]
}

output "ec2_private_ip" {
  value = [
    for i in aws_instance.my_instance : i.private_ip
  ]
}

variable "my_environment" {
  description = "Deployment environment (dev, staging, prd)"
  type        = string
  default     = "dev"

  # validation {
  #   condition     = contains(["dev", "staging", "prd"], var.my_environment)
  #   error_message = "Environment must be one of: dev, staging, prd."
  # }
}

