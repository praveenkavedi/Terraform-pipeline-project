variable "instance_count" {
    description = "Number of EC2 instances to create"
    type        = number
}

variable "env" {
    description = "Environment for the EC2 instances (e.g., dev, staging, prod)"
    type        = string
}

variable "instance_type" {
    description = "Type of EC2 instance to create"
    type        = string
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID of my EC2"
}

variable "ami_id" {
    type        = string
    description = "AMI ID of my EC2"
}