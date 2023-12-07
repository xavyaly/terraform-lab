resource "aws_instance" "web_server" {
  ami                    = var.aws_ami
  instance_type          = var.instance_type
  # vpc_security_group_ids = ["default"]
  availability_zone      = "us-west-2a"
  # availability_zone      = "us-west-2b"

  # lifecycle {
  #   # create_before_destroy = true
  #   prevent_destroy = false
  # }

  lifecycle {
    ignore_changes = [ tags, ]
  }

  tags = {
    # Name  = "Operations-${count.index}"
    Email = "xyz@gmail.coom"
  }
}