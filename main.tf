locals {
  filter = var.vpc_name == null ? var.tags : merge({Name=var.vpc_name}, var.tags)
  vpc_id = data.aws_vpc.selected.id
  owner_id = data.aws_vpc.selected.owner_id
  cidr_blocks = [for c in data.aws_vpc.selected.cidr_block_associations : c.cidr_block if c.state == "associated"]
  tags = data.aws_vpc.selected.tags
}

data "aws_vpc" "selected" {
  dynamic "filter" {
    for_each = local.filter

    content {
      name = format("tag:%s", filter.key)
      values = [filter.value]
    }
  }
}
