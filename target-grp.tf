resource "aws_lb_target_group" "terramino" {
  name     = "learn-asg-terramino"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.test_vpc.id
}

resource "aws_autoscaling_attachment" "terramino" {
  autoscaling_group_name = aws_autoscaling_group.terramino.id
  alb_target_group_arn   = aws_lb_target_group.terramino.arn
}
