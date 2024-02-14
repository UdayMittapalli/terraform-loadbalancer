resource "aws_lb_target_group" "hashicups" {
  name     = "learn-asg-hashicups"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.test_vpc.id
}
