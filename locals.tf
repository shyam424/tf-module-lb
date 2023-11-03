locals {
  #TAGS
  tags = merge (var.tags, {tf-module-name = "lb"}, {env = var.env} )
  sg_name = var.internal ? "${var.env}-lb-internal-sg" : "${var.env}-lb-public-sg"
  lb_name = var.internal ? "${var.env}-lb-internal" : "${var.env}-lb-public"
}