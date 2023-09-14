# Create the ALB resource in main.tf
resource "aws_lb" "alb" {
  for_each = var.alb_settings

  name               = each.value.name
  subnets            = each.value.subnets
  security_groups    = each.value.security_groups
  enable_deletion_protection = each.value.enable_deletion_protection

  enable_http2       = true
  internal           = false

  #enable_deletion_protection = each.value.enable_deletion_protection
}

