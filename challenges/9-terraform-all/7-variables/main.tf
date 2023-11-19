resource "aws_instance" "web_server_1" {
  ami                    = var.aws_ami
  instance_type          = var.aws_type
  vpc_security_group_ids = ["default"]

  user_data = <<EOF
  #!/bin/sh

  yum update -y
  yum install docker -y
  service docker start
  docker pull nginx:alpine
  docker run -it -d -name doc_ -p 80:80 nginx:apline
  EOF

  tags = {
    Name  = "Operations"
    Email = "xyz@gmail.coom"
  }
}

resource "aws_instance" "web_server_2" {
  ami                    = var.aws_ami
  instance_type          = var.aws_type
  vpc_security_group_ids = ["default"]

  user_data = <<EOF
  #!/bin/sh

  yum update -y
  yum install docker -y
  service docker start
  docker pull nginx:alpine
  docker run -it -d -name doc_ -p 80:80 nginx:apline
  EOF

  tags = {
    Name  = "Operations"
    Email = "xyz@gmail.coom"
  }
}

resource "aws_instance" "web_server_3" {
  ami                    = var.aws_ami
  instance_type          = var.aws_type
  vpc_security_group_ids = ["default"]

  user_data = <<EOF
  #!/bin/sh

  yum update -y
  yum install docker -y
  service docker start
  docker pull nginx:alpine
  docker run -it -d -name doc_ -p 80:80 nginx:apline
  EOF

  tags = {
    Name  = "Operations"
    Email = "xyz@gmail.coom"
  }
}

