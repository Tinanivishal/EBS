#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Deployed from EC2 Instance $(hostname)</h1>" > /var/www/html/index.html
aws s3 cp /var/www/html/index.html s3://your-s3-bucket-name/backup-$(hostname).html
Replace your-s3-bucket-name with the actual S3 bucket name (create it in next step).

