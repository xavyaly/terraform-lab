resource "aws_instance" "web_server" {
  ami                    = "ami-830c94e3"
  instance_type          = "t2.micro"
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

