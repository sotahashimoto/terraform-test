resource "aws_security_group" "this" {
  vpc_id      = var.vpc_id
  description = "For test"
  name        = "test-sg"

  tags = {
    Name = "test-sg"
  }
}

resource "aws_security_group_rule" "this" {
  for_each                 = var.sg_rule

  security_group_id        = aws_security_group.this.id
  type                     = each.value[0]
  from_port                = each.value[1]
  to_port                  = each.value[2]
  protocol                 = each.value[3]
  source_security_group_id = each.value[4]
  cidr_blocks              = each.value[5]
  description              = each.value[6]
}