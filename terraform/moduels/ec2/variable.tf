variable "vpc_id" { type = string }

variable "sg_rule" {
  type = map(object({
    type                     = string
    from_port                = number
    to_port                  = number
    protocol                 = string
    source_security_group_id = list(string)
    cidr_blocks              = list(string)
    description              = string
  }))
}