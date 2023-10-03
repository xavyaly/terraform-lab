variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstance"
}

variable "ami_id" {
  description = "Value of the ami for the EC2 instance"
  type        = string
  default     = "ami-08d70e59c07c61a3a"
}

variable "instance_id" {
  description = "Value of the instance_type for an C2 instance"
  type        = string
  default     = "t2.micro"
}

variable "region" {
  description = "Value of the region"
  type        = string
  default     = "us-west-2"
}