resource "aws_db_subnet_group" "tn" {
  name        = "test-db-subnet-group"
  subnet_ids  = [aws_subnet.public_subnet.id,aws_subnet.private_subnet.id]
}

resource "aws_db_instance" "test" {
  allocated_storage      = 10
  db_name                = "db"
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t3.micro"
  identifier             = "db"
  username               = var.username
  password               = var.password
  parameter_group_name   = "default.mysql5.7"
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_db_subnet_group.tn.name
  vpc_security_group_ids = [aws_security_group.db.id,aws_security_group.ec2_sg.id]
  publicly_accessible    = true

}

