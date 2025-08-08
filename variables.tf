variable "aws_region" {
  description = "AWS region to launch servers"
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the SSH key pair to use for the instance"
  default     = "rikhrv-ec2-2"
}