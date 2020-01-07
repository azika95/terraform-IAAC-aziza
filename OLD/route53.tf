resource "aws_route53_record" "www" { 
  zone_id = "Z3RXR67RBGOOLJ" 
  name    = "www.example.com" 
  type    = "A" 
  ttl     = "60" 
  records = [aws_instance.web[0].public_ip] 
}