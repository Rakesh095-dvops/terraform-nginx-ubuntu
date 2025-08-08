#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y nginx

sudo systemctl start nginx
sudo systemctl enable nginx

cat > /var/www/html/index.html << 'HTML'
<!DOCTYPE html>
<html>
<head>
    <title>Terraform Nginx Server</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
            background-color: #f4f4f4;
            }
        h1 {
            color: #333;
            font-size: 2.5em;
        }
    </style>
</head>
<body>
    <h1>Welcome to the Terraform-managed Nginx Server on Ubuntu</h1>
    <p>This server was automatically configured using Terraform!</p>
</body>
</html>
HTML

sudo systemctl restart nginx