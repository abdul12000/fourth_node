# provider "aws" {
#     profile  = "default"
#     region = "eu-west-1"
# }

# resource "aws_instance" "some_instance" {
#   ami           = "ami-009c3edd6d4e59883"
#   instance_type = "t2.micro"
#   key_name = "Windows1"
# }

provider "aws" {
  profile = "default"
  region  = "eu-west-1"
}
resource "aws_instance" "second_task" {
  ami           = "ami-009c3edd6d4e59883"
  instance_type = "t2.micro"
  key_name      = "Windows1"

  tags = {
    Name        = "my First Node"
    provisioner = "Terraform"
  }

}

resource "aws_instance" "fourth_node" {
  ami                    = "ami-009c3edd6d4e59883"
  instance_type          = "t2.micro"
  key_name               = "Windows1"
  vpc_security_group_ids = [aws_security_group.demo_sg.id]

  tags = {
    Name        = "my third Node"
    provisioner = "Terraform"
  }

}