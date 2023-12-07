variable "aws_ami" {
  description = "value of ami without data block"
  type        = string
  default     = "ami-830c94e3"
}

variable "aws_region" {
  description = "value of region without data block"
  default     = "us-west-2"
}

variable "instance_type" {
  description = "value of instance type without data block"
  default     = "t2.micro"
  # type = number   // Exception throws
  # type = string     // No Exception

  # type = list(string)
  # default = ["t2.micro","t2.medium","t2.large"]

  # type = map(string)
  # default = {
  #   "dev" = "t2.micro"
  #   "stage" = "t3.medium"
  #   "prod" = "t2.large"
  # }
}

variable "instance_count" {
  default = 3 // Customize
}
