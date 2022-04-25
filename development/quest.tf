module "quest-ecr" {
  source = "git@github.com:keblack789/quest-modules//ecr"

  env = var.env
  service = var.service
}

module "quest-ecs" {
  source = "git@github.com:keblack789/quest-modules//ecs"

  env = var.env
  service = var.service
  
  vpc_id = "vpc-a127bbd8"
  alb_subnet = "pub*"
  ecs_subnet = "priv*"
  port = 3000
  image = "980111423247.dkr.ecr.us-east-1.amazonaws.com/dev-quest:latest"
  alb_cert_arn = "arn:aws:acm:us-east-1:980111423247:certificate/48fc4489-60f4-4d0f-8d81-3e1808af6c59"
}