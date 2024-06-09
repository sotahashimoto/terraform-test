variable "vpc_id" { type = string }
variable "sg_rule" { type = map(any) }


variable "sg_rule" {
  type = map(object({
    type                     = string
    from_port                = number
    to_port                  = number
    protocol                 = string
    source_security_group_id = set(string)
    cidr_blocks              = set(string)
    description              = string
  }))
  default = []
}