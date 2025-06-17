provider "aws" {
  region = "ap-south-1"
}

module "app_server" {
  source            = "../modules/ec2_docker_app"
  key_name          = "docker-key-dev"
  public_key_file   = "../docker-key.pub"
  sg_name           = "allow_web_ssh_dev"
  ami               = "ami-03bb6d83c60fc5f7c"
  instance_type     = "t2.micro"
  docker_image      = "ksingh787/hello-app"
  instance_name     = "DevAppServer"
}