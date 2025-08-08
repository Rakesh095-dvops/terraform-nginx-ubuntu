output "vpc_info" {
  value = {
    id         = data.aws_vpc.default.id
    Name       = data.aws_vpc.default.tags["Name"]
    #cidr_block = data.aws_vpc.default.cidr_block
    #subnets    = data.aws_subnets.default.ids
  }
  description = "values of the default VPC and its subnets"
}

output "security_group_id" {
  value ={
    id   = aws_security_group.web_server.id
    name = aws_security_group.web_server.tags["Name"]
  }
  description = "values of the security group created for the Nginx web server"
}

output "nginx_server_instance_details" {
  value       = {
    id = aws_instance.nginx_server.id
    name = aws_instance.nginx_server.tags["Name"]
  }
  description = "ID of the Nginx server instance"
}

output "nginx_server_public_ip" {
  value       = aws_instance.nginx_server.public_ip
  description = "Public IP address of the Nginx server instance"
}

output "nginx_server_url" {
  value       = "http://${aws_instance.nginx_server.public_ip}"
  description = "URL to access the Nginx server"
}