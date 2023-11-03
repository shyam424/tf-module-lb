locals {
  #TAGS
  tags = merge (var.tags, {tf-module-name = "lb"}, {env = var.env} )
}