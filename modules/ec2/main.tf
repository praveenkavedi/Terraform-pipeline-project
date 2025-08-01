resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  count         = var.instance_count

  
  tags = {
    Name = "${var.env}-ec2-${count.index + 1}"
    env  = var.env
  }
}
