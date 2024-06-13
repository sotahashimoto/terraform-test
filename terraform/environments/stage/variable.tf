locals {
  #vpc

  #ec2
  sg_rule = {
    # rule           = [ type, from_port, to_port, protocol, sg-id, cidr_blocks, description ]
    "ingress_rule_1" = ["ingress", 80, 80, "tcp", null, ["0.0.0.0/0"], "HTTP"],
    "ingress_rule_2" = ["ingress", 443, 443, "tcp", null, ["0.0.0.0/0"], "HTTPS"],
    "ingress_rule_3" = ["ingress", 22, 22, "tcp", "sg-000cfa88dbf85e059", null, "SSH from Bastion"],
    "egress_rule_1" = ["egress", 0, 0, "-1", null, ["0.0.0.0/0"], "test"]
  }
}