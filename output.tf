output "private_subnet_ids" {
  value = length(var.network.private_subnet_ids) > 0 ? var.network.private_subnet_ids : [for net in aws_subnet.rosa_private : net.id]
}

output "public_subnet_ids" {
  value = length(var.network.public_subnet_ids) > 0 ? var.network.public_subnet_ids : [for net in aws_subnet.rosa_public : net.id]
}
