resource "aws_instance" "web_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name  = "Operations"
    Email = "xyz@gmail.coom"
  }
}