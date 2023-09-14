# Define a map of ALB settings in variables.tf
variable "alb_settings" {
  type = map(object({
    name               = string
    subnets            = list(string)
    security_groups    = list(string)
    enable_deletion_protection = bool
  }))
  default = {
    example_alb = {
      name               = "waf-alb"
      subnets            = ["subnet-03684d6346689fc6f", "subnet-0d1eb4790c95eef32"]
      security_groups    = ["sg-0b11bdfe28afdfaa5"]
      enable_deletion_protection = false
    }
  }
}

/*

*/