# Create EC2 Instance
resource "aws_instance" "web" {
  ami = "ami-0b5eea76982371e91" # Amazon Linux
  instance_type = "t2.micro"
  tags = {
    "Name" = "web-2"
  }
  lifecycle {
    prevent_destroy = true
  }
}
