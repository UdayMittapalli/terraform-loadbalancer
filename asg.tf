resource "aws_autoscaling_group" "terramino" {
  min_size             = 2
  max_size             = 5
  desired_capacity     = 3
  launch_configuration = aws_launch_configuration.terramino.name
  vpc_zone_identifier  = [aws_subnet.public_subnet.id]
}
