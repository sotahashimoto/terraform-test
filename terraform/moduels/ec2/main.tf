resource "aws_security_group" "this" {
  vpc_id      = var.vpc_id
  description = "For test"
  name        = "test-sg"

  tags = {
    Name = "test-sg"
  }
}

resource "aws_security_group_rule" "this" {
  for_each = var.sg_rule

  security_group_id        = aws_security_group.this.id
  type                     = each.value[0]
  from_port                = each.value[1]
  to_port                  = each.value[2]
  protocol                 = each.value[3]
  description              = each.value[6]

  dynamic "source_security_group_id" {
    for_each = each.value[4] != null ? [each.value[4]] : []
    content {
      source_security_group_id = source_security_group_id.value
    }
  }

  dynamic "cidr_blocks" {
    for_each = length(each.value[5]) > 0 ? [each.value[5]] : []
    content {
      cidr_blocks = cidr_blocks.value
    }
  }
}