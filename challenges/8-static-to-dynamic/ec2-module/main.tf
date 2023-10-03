resource "aws_instance" "app_server" {
  ami           = var.ami_id
  instance_type = var.instance_id

  tags = {
    Name = var.instance_name
  }
}
