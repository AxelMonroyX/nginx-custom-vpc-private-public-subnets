resource "aws_db_subnet_group" "rds_private_subnet" {
  name       = "rds-private-subnet-group"
  subnet_ids = ["${var.private_subnets}"]
}

resource "aws_security_group" "rds_sg" {
  name   = "rds-mysql-test-sg"
  vpc_id = "${var.vpc_id}"
}

resource "aws_db_instance" "default" {
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t2.micro"
  name                   = "rdstest"
  username               = "admin"
  password               = "rdzvKnVUd64QJ3BXvVWuFZe2jaGFqWNQedY" #TODO: hide secret
  parameter_group_name   = "default.mysql5.7"
  db_subnet_group_name   = "${aws_db_subnet_group.rds_private_subnet.name}"
  vpc_security_group_ids = ["${aws_security_group.rds_sg.id}"]
  skip_final_snapshot    = true
}

resource "aws_security_group_rule" "mysql_inbound_access" {
  from_port         = 3306
  protocol          = "tcp"
  security_group_id = "${aws_security_group.rds_sg.id}"
  to_port           = 3306
  type              = "ingress"
  cidr_blocks = ["${var.private_subnets_cidrs}"]
}
