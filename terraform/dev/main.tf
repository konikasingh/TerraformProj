provider "aws" {
  region = "ap-south-1"
}

module "app_server" {
  source            = "../modules/ec2_docker_app"
  key_name          = "docker-key-dev123"
  public_key        = file("${path.root}/../docker-key.pub")  # ✅ Loads content
  sg_name           = "allow_web_ssh_dev112233"
  ami               = "ami-03bb6d83c60fc5f7c"
  instance_type     = "t2.micro"
  docker_image      = "ksingh787/hello-app"
  instance_name     = "DevAppServer3"
}
