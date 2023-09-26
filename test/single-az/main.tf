provider "aws" {
  region = "us-east-2"
}

module "test" {
  source = "../../"

  network = {
    private_link       = true
    multi_az           = false
    vpc_network        = "10.10.0.0"
    vpc_cidr_size      = 16
    private_subnet_ids = []
    public_subnet_ids  = []
    subnet_cidr_size   = 20
  }
}
