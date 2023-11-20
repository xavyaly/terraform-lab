variable "aws_ami" {
  description = "value of ami without data block"
  type = string
  default = "ami-830c94e3"
}

variable "aws_region" {
  description = "value of region without data block"
  default = "us-west-2"
}

variable "instance_type" {
  description = "value of instance type without data block"
  default = "t2.micro"
}

variable "instance_count" {
  default = 3
}
