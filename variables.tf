variable "vpc_name" {
  type = string
  description = "The VPC Name tag value"
  default = null
}

variable "tags" {
  type = map
  description = "Tags map, e.g. {stack=app, layer=network}"
  default = {}
}
