module "aws-prd" {
  source = "../../infra"
  instancia = "t2.micro"
  regiao_aws = "us-west-2"
  chave = "IaC-prod"
  grupo = "production"
}

output "IP" {
  value = module.aws-prd.IP_publico
}