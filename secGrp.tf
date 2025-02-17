resource "aws_security_group" "as_sg" {
  name        = "as_sg"
  description = "Allow TLS inbound traffic and all outbound traffic"

  tags = {
    Name = "as_sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "sshfrommyIP" {
  security_group_id = aws_security_group.as_sg.id
  cidr_ipv4         = "10.0.0.0/8"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.as_sg.id
  cidr_ipv4         = "10.0.0.0/8"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.as_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv6" {
  security_group_id = aws_security_group.as_sg.id
  cidr_ipv6         = "::/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}