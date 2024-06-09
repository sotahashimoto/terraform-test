locals {
  #vpc

  #ec2
  sg_rule = {
    ## [ type, from_port, to_port, protocol, sg-id, cidr_blocks, description ]
    "rule_1" = ["ingress", 80, 80, "tcp", null, ["0.0.0.0/0"], "HTTP from Internet"],
    #"rule_2" = ["ingress", 22, 22, "tcp", "sg-1234567890", null, "SSH from Bastion"],
    "rule_3" = ["egress", 0, 0, "-1", null, ["0.0.0.0/0"], "Allow any outbound traffic"]
  }
}