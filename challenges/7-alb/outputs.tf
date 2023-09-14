# Output the ARN of the ALB in outputs.tf
output "alb_arn" {
  value = {
    for k, v in aws_lb.alb : k => v.arn
  }
}