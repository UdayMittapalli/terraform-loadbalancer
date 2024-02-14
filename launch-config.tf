resource "aws_launch_configuration" "terramino" {
  name_prefix     = "learn-terraform-aws-asg-"
  image_id        = "ami-052efd3df9dad4825"
  instance_type   = "t2.medium"
  security_groups = [aws_security_group.public-sg.id]

  lifecycle {
    create_before_destroy = true
  }
}
