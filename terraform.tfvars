# VPC - use these parameters to create new VPC resources
# 10.0.0.0 - 10.255.255.255 (10/8 접두사)	
# 172.16.0.0 - 172.31.255.255 (172.16/12 접두사)	
# 192.168.0.0 - 192.168.255.255 (192.168/16 접두사)	
cidr = "192.168.0.0/16"

azs = ["ap-northeast-2a", "ap-northeast-2c"]

private_subnets = ["192.168.1.0/24", "192.168.2.0/24"]

public_subnets = ["192.168.11.0/24", "192.168.12.0/24"]

# VPC - use these parameters to use existing VPC resources
# vpc_id = "vpc-1651acf1"
# private_subnet_ids = ["subnet-1fe3d837", "subnet-129d66ab"]
# public_subnet_ids = ["subnet-1211eef5", "subnet-163466ab"]

# DNS
route53_zone_name = "se.terraform.devart.tv"
route53_zone_id   = "Z09592541ORFQU165OP4F"

# ACM (SSL certificate)
# Specify ARN of an existing certificate or new one will be created and validated using Route53 DNS:
certificate_arn = "arn:aws:acm:ap-northeast-2:680463082671:certificate/464ee562-e62b-4f66-9856-008ca950f023"

# ECS Service and Task
ecs_service_assign_public_ip = true

# Atlantis
atlantis_allowed_repo_names = ["terraform-atlantis-test"]
atlantis_repo_whitelist     = ["github.com/ssen-hailey/*"]

# Specify one of the following block.
# For Github
atlantis_github_user = "ssen-hailey"

# For Gitlab
atlantis_gitlab_user       = ""
atlantis_gitlab_user_token = ""

# For Bitbucket
atlantis_bitbucket_user       = ""
atlantis_bitbucket_user_token = ""

# For Bitbucket on prem (Stash)
# atlantis_bitbucket_base_url = ""

# Tags
tags = {
  Name = "atlantis"
}
