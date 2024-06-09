locals {
  #vpc

  #ec2
  sg_rule = {
    ## [ type, from_port, to_port, protocol, sg-id, cidr_blocks, description ]
    "ingress_rule_1" = ["ingress", 80, 80, "tcp", null, ["0.0.0.0/0"], "HTTP"],
    "ingress_rule_2" = ["ingress", 443, 443, "tcp", null, ["0.0.0.0/0"], "HTTP"],
    #"rule_2" = ["ingress", 22, 22, "tcp", "sg-1234567890", null, "SSH from Bastion"],
    "egress_rule_1" = ["egress", 0, 0, "-1", null, ["0.0.0.0/0"], "Allow any outbound traffic"]
  }
}