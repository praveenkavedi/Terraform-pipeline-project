variable "vpc_cidr" {
    description = "CIDR block for the VPC"
    type        = string
  
}

variable "env" {
    description = "Environment for the VPC (e.g., dev, staging, prod)"
    type        = string
}

variable "subnet_cidr" {
    description = "CIDR block for the subnet"
    type        = string
}

variable "az" {
    description = "Availability Zone for the subnet"
    type        = string
}

