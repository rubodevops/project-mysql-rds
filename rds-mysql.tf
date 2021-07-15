locals {
  private_key_path = "/home/dev/Downloads/aws-demo777.pem"
  
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# export AWS_ACCESS_KEY_ID="your key"
# export AWS_SECRET_ACCESS_KEY="your key"



provider "aws" {
  region = "us-east-2"
  shared_credentials_file = "/home/dev/Downloads/rootkey.csv"
  #profile                 = "default"

}


resource "aws_db_instance" "default" {
  
  allocated_storage    = 20
  storage_encrypted     = false
  engine               = "mysql"
  engine_version       = "8.0.20"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "root"
  password             = "rootpass"
  #parameter_group_name = "default.mysql8.0.20"
  port                 = 3306
  vpc_security_group_ids   = [aws_security_group.rds.id]  
  skip_final_snapshot  = true
  deletion_protection     = false
}
  
  
  






  
  
  
  
  





















