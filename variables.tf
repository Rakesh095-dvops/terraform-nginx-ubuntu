variable "aws_region" {
  description = "AWS region to launch servers"
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID to use for the EC2 instance"
  default     = "ami-02f607855bfce66b6"  # Example AMI ID, replace with a valid one for your region
}

variable "key_name" {
  description = "Name of the SSH key pair to use for the instance"
  default     = "rikhrv-ec2-2"
}