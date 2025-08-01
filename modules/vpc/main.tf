resource "aws_vpc" "myvpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "${var.env}-vpc"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.subnet_cidr
  availability_zone = var.az

  tags = {
    Name = "${var.env}-subnet"
  }
}

output "subnet_id" {
  description = "Subnet in which ec2 to be created"
  value = aws_subnet.main.id
}