variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
    description = "CIDR block for the subnet"
    type        = string
    default     = "10.0.1.0/24"
    }
variable "az" {
    description = "Availability Zone for the resources"
    type        = string
    default     = "ap-south-1a"
}
variable "env" {
    description = "Environment name (e.g., dev, prod)"
    type        = string
    default     = "dev"
}
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0d0ad8bb301edb745" # Example AMI ID, replace with a valid one
}
variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t2.micro" # Example instance type, replace with a valid one
}

variable "instance_count" {
  description = "Number of EC2 instances to launch"
  type        = number
  default     = 1
}

