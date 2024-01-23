data "aws_availability_zones" "available" {
  filter {
    name   = "region-name"
    values = [var.region]
  }

  filter {
    name   = "group-name"
    values = [var.region]
  }

  filter {
    name   = "state"
    values = ["available"]
  }
}
