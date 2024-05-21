output "lb_arn" {
  description = "The ARN of the load balancer"
  value       = aws_lb.my_lb.arn
}

output "lb_dns_name" {
  description = "The DNS name of the load balancer"
  value       = aws_lb.my_lb.dns_name
}

output "target_group_arn" {
  description = "The ARN of the target group"
  value       = aws_lb_target_group.my_tg.arn
}