

output "public_ip" {
  value = aws_instance.web.public_ip
}
output "target_group_arn" {
  value = aws_lb_target_group.tg.arn
}
output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "private_subnet_id" {
  value = aws_subnet.private_subnet.id
}

output "nat_eip" {
  value = aws_eip.nat.public_ip
}
output "public_dns" {
  value = aws_instance.web.public_dns
}


