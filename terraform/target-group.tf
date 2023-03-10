resource "aws_lb_target_group" "tg" {
  name_prefix = "test"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.vpc.id
}
