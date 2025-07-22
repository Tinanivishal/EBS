#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<html><body><h1 style='text-align:center;color:green;'>Welcome to Server </h1><p style='text-align:center;'>Hostname: $(hostname)</p></body></html>" > /var/www/html/index.html
