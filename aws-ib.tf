resource "aws_lb" "terramino" {
  name               = "learn-asg-terramino-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.public-sg.id]
  subnets            = [aws_subnet.public_subnet.id, aws_subnet.public1_subnet.id]
}
