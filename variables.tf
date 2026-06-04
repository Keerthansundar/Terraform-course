variable "aws_region" {
  description = "AWS region where resources will be provisioned"
  type        = string
  default     = "us-east-2"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-085f9c64a9b75eed5"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"

  validation {
    condition     = contains(["t2.micro", "t2.small", "t2.medium", "t3.micro", "t3.small", "t3.medium"], var.instance_type)
    error_message = "Instance type must be one of: t2.micro, t2.small, t2.medium, t3.micro, t3.small, t3.medium."
  }
}



variable "instances" {
  default = {
    web = {
      ami           = "ami-0c55b159cbfafe1f0"
      instance_type = "t2.micro"
    }
    db = {
      ami           = "ami-0c55b159cbfafe1f0"
      instance_type = "t2.medium"
    }
    cache = {
      ami           = "ami-0c55b159cbfafe1f0"
      instance_type = "t2.small"
    }
    app = {
      ami           = "ami-0c55b159cbfafe1f0"
      instance_type = "t2.large"
    }
    monitor = {
      ami           = "ami-0c55b159cbfafe1f0"
      instance_type = "t2.micro"
    }
  }
}