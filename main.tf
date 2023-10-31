provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0287a05f0ef0e9d9a"
  instance_type = "t2.micro"
  tags = {
    "Name" = "NdEC2Instance"
  }

}
