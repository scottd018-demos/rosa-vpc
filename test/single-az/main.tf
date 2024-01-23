provider "aws" {
  region = "us-east-1"
}

module "test" {
  source = "../../"

  cluster_name = "dscott-small"

  network = {
    private_link       = true
    multi_az           = false
    vpc_network        = "10.10.0.0"
    vpc_cidr_size      = 23
    private_subnet_ids = []
    public_subnet_ids  = []
    subnet_cidr_size   = 26
  }
}
