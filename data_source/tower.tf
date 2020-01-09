#Go to us-east-1 region
provider "aws" {
    region = "us-east-1"
}
# Search for Centos Latest with the owner
data "aws_ami" "centos" {
    most_recent = true
    owners = ["099720109477"]
     filter { 
        name  = "root-device-type" 
         values = ["ebs"] 
    most_recent =true
    owners = [679593333241]
         } 
     filter { 
         name ="name" 
         values = ["CentOS Linux 7 x86_64 HVM EBS *"] 
         } 
}
# Show  AMI id
output "ami" {
    value = data_ami_centos_id
}
resource "aws_key_pair" "${towerkey}" { 
  key_name   = "${towerkey}" 
  public_key = "${file("${var.key_name_location}")}" 
  provisioner "remote-exec" {
      connection {
          host = "${self.public_ip}"
          type = "ssh"
          user = "${var.user}"
          private_key = "file("~/.ssh/id_rsa")"
          }
          inline = [
              "sudo yum install -y epel-release",
              ]
              }
        }

resource "aws_instance" "tower" {
  ami = data.aws_ami.centos.id 
  instance_type = "t2.micro"
  key_name = aws_key_pair.tower.key_name
  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_route53_record" "tower" { 
  zone_id = "Z3RXR67RBGOOLJ" 
  name    = "www.example.com" 
  type    = "A" 
  ttl     = "300" 
  records = [aws_instance.web.public_ip] 
} 