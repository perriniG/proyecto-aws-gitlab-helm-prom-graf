provider "aws" {
  region = var.region
}

resource "aws_lb" "my_lb" {
  name = var.lb_name
  internal = false
  load_balancer_type = "application"
  security_groups = var.security_groups_ids
  subnets = var.subnets_ids

  enable_deletion_protection = false

  tags = {
    Name = var.lb_name
  }
}

resource "aws_lb_listener" "frontend" {
  load_balancer_arn = aws_lb.my_lb.arn
  port = "80"
  protocol = "HTTP"

  default_action {
    type = "fixed-response"
    fixed_response {
      content_type = "text/plain"
      message_body = "404: Not Found!!!"
      status_code = "404"
    }
  }
}

resource "aws_lb_target_group" "my_tg" {
  name     = var.target_group_name
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id

  health_check {
    path                = "/"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 5
    unhealthy_threshold = 2
    matcher             = "200"
  }

  tags = {
    Name = var.target_group_name
  }
}