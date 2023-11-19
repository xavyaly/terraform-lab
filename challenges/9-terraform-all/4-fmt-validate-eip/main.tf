resource "aws_instance" "web_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name  = "Operations"
    Email = "xyz@gmail.coom"
  }
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "zero-size-bucket"
}

resource "aws_eip" "eip" {
  vpc = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.web_server.id
  allocation_id = aws_eip.eip.id
}