output "region" {
    value = var.region
}

output "project-name" {
    value = var.project-name
}

output "vpc_id" {
    value = aws_vpc.vpc.id
}
output "public_subnet_az1_cidr" {
    value = aws_subnet.public_subnet_az1.id
}

output "public_subnet_az2_cidr" {
    value = aws_subnet.public_subnet_az2.id
}

output "private_app_subnet_az1_cidr" {
    value = aws_subnet.private_app_subnet_az1.id
}

output "private_app_subnet_az2_cidr" {
    value = aws_subnet.private_app_subnet_az2.id
}

output "private_data_subnet_az1_cidr" {
    value = aws_subnet.private_data_subnet_az1.id
}

output "private_data_subnet_az2_cidr" {
    value = aws_subnet.private_data_subnet_az2.id
}

output "nternet_gateway" {
  value = aws_internet_gateway.internet_gateway
}