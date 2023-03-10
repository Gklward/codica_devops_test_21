resource "aws_lb" "alb" {
  name               = "test1"
  subnets            = [aws_subnet.public_subnet.id,
                       aws_subnet.private_subnet.id,
                       ]
  security_groups    = [aws_security_group.lb.id]
  internal           = false
  load_balancer_type = "application"

}         


